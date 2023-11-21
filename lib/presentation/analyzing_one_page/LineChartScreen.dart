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
  Map<String, dynamic> additionalData = {}; // Store the additional data
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data from the API when the screen loads
  }

  // Function to fetch data from the API
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
            .where((entry) => entry.key < 100)
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        redData = redDataList
            .asMap()
            .entries
            .where((entry) => entry.key < 20) // Limit data to the first 20 points
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
        // Handle error
        print('Failed to load data: ${response.statusCode}');
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      // Handle network or other exceptions
      print('Error fetching data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Center the loading spinner in the middle of the screen
            if (isLoading)
              Center(
                child: CircularProgressIndicator(),
              ),

            // Chart Heading for IR Data
            if (!isLoading)
              Text(
                'IR Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            // Display Line Chart for IR Data with top and bottom margins
            if (!isLoading)
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                height: 350, // Specify the initial height
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
                    maxX: irData.length.toDouble() - 1,
                    minY: 0,
                    maxY: 600, // Adjust this value based on your data range
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

            // Chart Heading for Red Data
            if (!isLoading)
              Text(
                'Red Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            // Display Line Chart for Red Data with top and bottom margins
            if (!isLoading)
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                height: 350, // Specify the initial height
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
                    minY: 0,
                    maxY: 600, // Adjust this value based on your data range
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

            // Additional Data Display
            if (!isLoading)
              Text(
                'Additional Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            // Display additional data below the charts
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
