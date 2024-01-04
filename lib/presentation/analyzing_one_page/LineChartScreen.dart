import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CustomLineChartScreen extends StatefulWidget {
  @override
  _CustomLineChartScreenState createState() => _CustomLineChartScreenState();
}

class _CustomLineChartScreenState extends State<CustomLineChartScreen> {
  List<FlSpot> irData = [];
  List<FlSpot> redData = [];
  List<FlSpot> BPMData = [];
  List<FlSpot> Spo2Data = [];

  Map<String, dynamic> additionalData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://rsteth.uc.r.appspot.com/api/data_before_days/?ip_address=192.168.8.107&mac_address=48:3F:DA:4F:A4:98&days=55'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final irDataList = data['BPM'] as List<dynamic>;
        final redDataList = data['red_data'] as List<dynamic>;
        final BPMDataList = data['BPM'] as List<dynamic>;
        final Spo2DataList = data['SpO2'] as List<dynamic>;

        irData = irDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        redData = redDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        BPMData = BPMDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        Spo2Data = Spo2DataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        additionalData = data['denoise_data'] as Map<String, dynamic>;

        setState(() {
          isLoading = false;
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double minIrData = double.infinity;
    double maxIrData = -double.infinity;
    double minRedData = double.infinity;
    double maxRedData = -double.infinity;
    double minBPMData = double.infinity;
    double maxBPMData = -double.infinity;
    double minSPo2Data = double.infinity;
    double maxSPo2Data = -double.infinity;

    for (FlSpot spot in irData) {
      if (spot.y < minIrData) minIrData = spot.y + 0.1;
      if (spot.y > maxIrData) maxIrData = spot.y + 0.1;
    }

    for (FlSpot spot in redData) {
      if (spot.y < minRedData) minRedData = spot.y + 0.1;
      if (spot.y > maxRedData) maxRedData = spot.y + 0.1;
    }

    for (FlSpot spot in BPMData) {
      if (spot.y < minBPMData) minBPMData = spot.y + 0.1;
      if (spot.y > maxBPMData) maxBPMData = spot.y + 0.1;
    }

    for (FlSpot spot in Spo2Data) {
      if (spot.y < minSPo2Data) minSPo2Data = spot.y + 0.1;
      if (spot.y > maxSPo2Data) maxSPo2Data = spot.y + 0.1;
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (isLoading)
              Center(
                child: CircularProgressIndicator(),
              ),

            if (!isLoading)
              Text(
                'IR Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            if (!isLoading)
              SizedBox(
                width: double.infinity,
                height: 350,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: true),
                      bottomTitles: SideTitles(showTitles: true),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: const Color(0xff37434d),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: irData.length.toDouble() ,
                    minY: minIrData - 100,
                    maxY: maxIrData + 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: irData,
                        isCurved: true,
                        colors: [const Color(0xff4af699)],
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),

            if (!isLoading)
              Text(
                'BPM',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            if (!isLoading)
              SizedBox(
                width: double.infinity,
                height: 350,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: true),
                      bottomTitles: SideTitles(showTitles: true),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: const Color(0xff37434d),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: BPMData.length.toDouble() - 1,
                    minY: minBPMData - 10,
                    maxY: maxBPMData + 10,
                    lineBarsData: [
                      LineChartBarData(
                        spots: BPMData,
                        isCurved: true,
                        colors: [const Color(0xff004cfc)],
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            if (!isLoading)
              Text(
                'SpO2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            if (!isLoading)
              SizedBox(
                width: double.infinity,
                height: 350,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: true),
                      bottomTitles: SideTitles(showTitles: true),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: const Color(0xff37434d),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: Spo2Data.length.toDouble() - 1,
                    minY: minSPo2Data - 10,
                    maxY: maxSPo2Data + 10,
                    lineBarsData: [
                      LineChartBarData(
                        spots: Spo2Data,
                        isCurved: true,
                        colors: [const Color(0xff004cfc)],
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),

            if (!isLoading)
              Text(
                'Red Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            if (!isLoading)
              SizedBox(
                width: double.infinity,
                height: 350,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: true),
                      bottomTitles: SideTitles(showTitles: true),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: const Color(0xff37434d),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: redData.length.toDouble() - 1,
                    minY: minRedData - 100,
                    maxY: maxRedData + 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: redData,
                        isCurved: true,
                        colors: [const Color(0xff004cfc)],
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}