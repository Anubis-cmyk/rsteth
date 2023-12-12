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

  Map<String, dynamic> additionalData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://rsteth.uc.r.appspot.com/api/chart-data'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final irDataList = data['ir_data'] as List<dynamic>;
        final redDataList = data['red_data'] as List<dynamic>;

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

    for (FlSpot spot in irData) {
      if (spot.y < minIrData) minIrData = spot.y + 0.1;
      if (spot.y > maxIrData) maxIrData = spot.y + 0.1;
    }

    for (FlSpot spot in redData) {
      if (spot.y < minRedData) minRedData = spot.y + 0.1;
      if (spot.y > maxRedData) maxRedData = spot.y + 0.1;
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

            if (!isLoading)
              Text(
                'Additional Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            if (!isLoading)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: additionalData.keys.map((key) {
                  return Text('$key: ${additionalData[key]}', style: TextStyle(color: Colors.black));
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}