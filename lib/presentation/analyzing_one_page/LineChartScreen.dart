import 'package:http/http.dart' as http;
import 'dart:convert';
//
// class CustomLineChartScreen extends StatefulWidget {
//   @override
//   _CustomLineChartScreenState createState() => _CustomLineChartScreenState();
// }
//
// class _CustomLineChartScreenState extends State<CustomLineChartScreen> {
//   List<FlSpot> irData = [];
//   List<FlSpot> redData = [];
//   List<FlSpot> BPMData = [];
//   List<FlSpot> Spo2Data = [];
//
//   Map<String, dynamic> additionalData = {};
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   Future<void> fetchData() async {
//     try {
//       final response = await http.get(Uri.parse('https://rsteth.uc.r.appspot.com/api/data_before_days/?ip_address=192.168.8.107&mac_address=48:3F:DA:4F:A4:98&days=55'));
//
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         final irDataList = data['BPM'] as List<dynamic>;
//         final redDataList = data['red_data'] as List<dynamic>;
//         final BPMDataList = data['BPM'] as List<dynamic>;
//         final Spo2DataList = data['SpO2'] as List<dynamic>;
//
//         irData = irDataList
//             .asMap()
//             .entries
//             .map((entry) {
//           final x = entry.key.toDouble();
//           final y = entry.value.toDouble();
//           return FlSpot(x, y);
//         }).toList();
//
//         redData = redDataList
//             .asMap()
//             .entries
//             .map((entry) {
//           final x = entry.key.toDouble();
//           final y = entry.value.toDouble();
//           return FlSpot(x, y);
//         }).toList();
//
//         BPMData = BPMDataList
//             .asMap()
//             .entries
//             .map((entry) {
//           final x = entry.key.toDouble();
//           final y = entry.value.toDouble();
//           return FlSpot(x, y);
//         }).toList();
//
//         Spo2Data = Spo2DataList
//             .asMap()
//             .entries
//             .map((entry) {
//           final x = entry.key.toDouble();
//           final y = entry.value.toDouble();
//           return FlSpot(x, y);
//         }).toList();
//
//         additionalData = data['denoise_data'] as Map<String, dynamic>;
//
//         setState(() {
//           isLoading = false;
//         });
//       } else {
//         print('Failed to load data: ${response.statusCode}');
//         setState(() {
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       print('Error fetching data: $e');
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double minIrData = double.infinity;
//     double maxIrData = -double.infinity;
//     double minRedData = double.infinity;
//     double maxRedData = -double.infinity;
//     double minBPMData = double.infinity;
//     double maxBPMData = -double.infinity;
//     double minSPo2Data = double.infinity;
//     double maxSPo2Data = -double.infinity;
//
//     for (FlSpot spot in irData) {
//       if (spot.y < minIrData) minIrData = spot.y + 0.1;
//       if (spot.y > maxIrData) maxIrData = spot.y + 0.1;
//     }
//
//     for (FlSpot spot in redData) {
//       if (spot.y < minRedData) minRedData = spot.y + 0.1;
//       if (spot.y > maxRedData) maxRedData = spot.y + 0.1;
//     }
//
//     for (FlSpot spot in BPMData) {
//       if (spot.y < minBPMData) minBPMData = spot.y + 0.1;
//       if (spot.y > maxBPMData) maxBPMData = spot.y + 0.1;
//     }
//
//     for (FlSpot spot in Spo2Data) {
//       if (spot.y < minSPo2Data) minSPo2Data = spot.y + 0.1;
//       if (spot.y > maxSPo2Data) maxSPo2Data = spot.y + 0.1;
//     }
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             if (isLoading)
//               Center(
//                 child: CircularProgressIndicator(),
//               ),
//
//             if (!isLoading)
//               Text(
//                 'IR Data',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//               ),
//
//             if (!isLoading)
//               SizedBox(
//                 width: double.infinity,
//                 height: 350,
//                 child: LineChart(
//                   LineChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       leftTitles: SideTitles(showTitles: true),
//                       bottomTitles: SideTitles(showTitles: true),
//                     ),
//                     borderData: FlBorderData(
//                       show: true,
//                       border: Border.all(
//                         color: const Color(0xff37434d),
//                         width: 1,
//                       ),
//                     ),
//                     minX: 0,
//                     maxX: irData.length.toDouble() ,
//                     minY: minIrData - 100,
//                     maxY: maxIrData + 100,
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: irData,
//                         isCurved: true,
//                         colors: [const Color(0xff4af699)],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//             if (!isLoading)
//               Text(
//                 'BPM',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//               ),
//
//             if (!isLoading)
//               SizedBox(
//                 width: double.infinity,
//                 height: 350,
//                 child: LineChart(
//                   LineChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       leftTitles: SideTitles(showTitles: true),
//                       bottomTitles: SideTitles(showTitles: true),
//                     ),
//                     borderData: FlBorderData(
//                       show: true,
//                       border: Border.all(
//                         color: const Color(0xff37434d),
//                         width: 1,
//                       ),
//                     ),
//                     minX: 0,
//                     maxX: BPMData.length.toDouble() - 1,
//                     minY: minBPMData - 10,
//                     maxY: maxBPMData + 10,
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: BPMData,
//                         isCurved: true,
//                         colors: [const Color(0xff004cfc)],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             if (!isLoading)
//               Text(
//                 'SpO2',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//               ),
//
//             if (!isLoading)
//               SizedBox(
//                 width: double.infinity,
//                 height: 350,
//                 child: LineChart(
//                   LineChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       leftTitles: SideTitles(showTitles: true),
//                       bottomTitles: SideTitles(showTitles: true),
//                     ),
//                     borderData: FlBorderData(
//                       show: true,
//                       border: Border.all(
//                         color: const Color(0xff37434d),
//                         width: 1,
//                       ),
//                     ),
//                     minX: 0,
//                     maxX: Spo2Data.length.toDouble() - 1,
//                     minY: minSPo2Data - 10,
//                     maxY: maxSPo2Data + 10,
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: Spo2Data,
//                         isCurved: true,
//                         colors: [const Color(0xff004cfc)],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//             if (!isLoading)
//               Text(
//                 'Red Data', 
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//               ),
//
//             if (!isLoading)
//               SizedBox(
//                 width: double.infinity,
//                 height: 350,
//                 child: LineChart(
//                   LineChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       leftTitles: SideTitles(showTitles: true),
//                       bottomTitles: SideTitles(showTitles: true),
//                     ),
//                     borderData: FlBorderData(
//                       show: true,
//                       border: Border.all(
//                         color: const Color(0xff37434d),
//                         width: 1,
//                       ),
//                     ),
//                     minX: 0,
//                     maxX: redData.length.toDouble() - 1,
//                     minY: minRedData - 100,
//                     maxY: maxRedData + 100,
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: redData,
//                         isCurved: true,
//                         colors: [const Color(0xff004cfc)],
//                         dotData: FlDotData(show: false),
//                         belowBarData: BarAreaData(show: false),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../theme/theme_helper.dart';
class CustomLineChart extends StatelessWidget {
  final List<FlSpot> data;
  final double minY;
  final double maxY;
  final Color lineColor;
  final String title;

  CustomLineChart({
    required this.data,
    required this.minY,
    required this.maxY,
    required this.lineColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: lineColor.withOpacity(0.5),
        ),
        color: lineColor.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 20),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: lineColor),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 350,
            child: LineChart(
              LineChartData(
                backgroundColor: lineColor.withOpacity(0.2),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(showTitles: true),
                  bottomTitles: SideTitles(showTitles: true),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(
                    color: const Color(0xff37434d), // Adjust border color here
                    width: 1,
                  ),
                ),
                minX: 0,
                maxX: data.length.toDouble() - 1,
                minY: minY - 10,
                maxY: maxY + 10,
                lineBarsData: [
                  LineChartBarData(
                    spots: data,
                    isCurved: true,
                    colors: [lineColor],
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomLineChartScreen extends StatefulWidget {
  @override
  _CustomLineChartScreenState createState() => _CustomLineChartScreenState();
}

class _CustomLineChartScreenState extends State<CustomLineChartScreen> {
  List<FlSpot> ECGData = [];
  List<FlSpot> BPMData = [];
  List<FlSpot> Spo2Data = [];
  List<FlSpot> SDNNData = [];
  List<FlSpot> RMSSDData = [];
  List<FlSpot> PNN50Data = [];
  List<FlSpot> HRVData = [];

  Map<String, dynamic> additionalData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://rsteth.uc.r.appspot.com/api/vitals/data_before_days/?ip_address=127.0.1.1&mac_address=e4:5f:01:f6:3d:73&days=2'));
      final ECGresponse = await http.get(Uri.parse('https://rsteth.uc.r.appspot.com/api/ecg/data_before_hours/?mac_address=e4:5f:01:f6:3d:73&hours=20&range=1000'));

      if (ECGresponse.statusCode == 200) {
        final data = json.decode(ECGresponse.body);
        final ECGDataList = data['ECG'] as List<dynamic>;

        ECGData = ECGDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        setState(() {
          isLoading = false;
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
        setState(() {
          isLoading = false;
        });
      }

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final BPMDataList = data['BPM'] as List<dynamic>;
        final Spo2DataList = data['SpO2'] as List<dynamic>;
        final SDNNDataList = data['SDNN'] as List<dynamic>;
        final RMSSDDataList = data['RMSSD'] as List<dynamic>;
        final PNN50DataList = data['PNN50'] as List<dynamic>;
        final HRVDataList = data['HRV'] as List<dynamic>;



        RMSSDData = RMSSDDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        PNN50Data = PNN50DataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        HRVData = HRVDataList
            .asMap()
            .entries
            .map((entry) {
          final x = entry.key.toDouble();
          final y = entry.value.toDouble();
          return FlSpot(x, y);
        }).toList();

        SDNNData = SDNNDataList
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
    double minBPMData = double.infinity;
    double maxBPMData = -double.infinity;
    double minSPo2Data = double.infinity;
    double maxSPo2Data = -double.infinity;
    double minSDNNData = double.infinity;
    double maxSDNNData = -double.infinity;
    double minRMSSDData = double.infinity;
    double maxRMSSDData = -double.infinity;
    double minPNN50Data = double.infinity;
    double maxPNN50Data = -double.infinity;
    double minHRVData = double.infinity;
    double maxHRVData = -double.infinity;


    double minECGData = double.infinity;
    double maxECGData = -double.infinity;

    for (FlSpot spot in ECGData) {
      if (spot.y < minECGData) minECGData = spot.y + 0.1;
      if (spot.y > maxECGData) maxECGData = spot.y + 0.1;
    }



    for (FlSpot spot in BPMData) {
      if (spot.y < minBPMData) minBPMData = spot.y + 0.1;
      if (spot.y > maxBPMData) maxBPMData = spot.y + 0.1;
    }

    for (FlSpot spot in Spo2Data) {
      if (spot.y < minSPo2Data) minSPo2Data = spot.y + 0.1;
      if (spot.y > maxSPo2Data) maxSPo2Data = spot.y + 0.1;
    }

    for (FlSpot spot in SDNNData) {
      if (spot.y < minSDNNData) minSDNNData = spot.y + 0.1;
      if (spot.y > maxSDNNData) maxSDNNData = spot.y + 0.1;
    }

    for (FlSpot spot in HRVData) {
      if (spot.y < minHRVData) minHRVData = spot.y + 0.1;
      if (spot.y > maxHRVData) maxHRVData = spot.y + 0.1;
    }

    for (FlSpot spot in PNN50Data) {
      if (spot.y < minPNN50Data) minPNN50Data = spot.y + 0.1;
      if (spot.y > maxPNN50Data) maxPNN50Data = spot.y + 0.1;
    }

    for (FlSpot spot in RMSSDData) {
      if (spot.y < minRMSSDData) minRMSSDData = spot.y + 0.1;
      if (spot.y > maxRMSSDData) maxRMSSDData = spot.y + 0.1;
    }


    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text(
              'Analyzed Data',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: theme.colorScheme.primary,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "rSteth",
              ),
              Tab(
                text: "Pulse Ox",
              ),
              Tab(
                text: "BP",
              ),
              Tab(
                text: "ECG",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  if (isLoading)
                    Center(
                      child: CircularProgressIndicator(),
                    ),


                  if (!isLoading)
                    CustomLineChart(
                      data: BPMData,
                      minY: minBPMData,
                      maxY: maxBPMData,
                      lineColor: const Color(0xD904B4ff),
                      title: 'BPM',
                    ),

                  if (!isLoading)
                    CustomLineChart(
                      data: Spo2Data,
                      minY: minSPo2Data,
                      maxY: maxSPo2Data,
                      lineColor: const Color(0xD9FF0000),
                      title: 'SpO2',
                    ),

                  if (!isLoading)
                    CustomLineChart(
                      data: SDNNData,
                      minY: minSDNNData,
                      maxY: maxSDNNData,
                      lineColor: const Color(0xD9FF7300),
                      title: 'SDNN',
                    ),

                  if (!isLoading)
                    CustomLineChart(
                      data: RMSSDData,
                      minY: minRMSSDData,
                      maxY: maxRMSSDData,
                      lineColor: const Color(0xD9367F86),
                      title: 'RMSSD',
                    ),

                  if (!isLoading)
                    CustomLineChart(
                      data: PNN50Data,
                      minY: minPNN50Data,
                      maxY: maxPNN50Data,
                      lineColor: const Color(0xD92C8F3A),
                      title: 'PNN50',
                    ),

                  if (!isLoading)
                    CustomLineChart(
                      data: HRVData,
                      minY: minHRVData,
                      maxY: maxHRVData,
                      lineColor: const Color(0xD961469F),
                      title: 'HRV',
                    ),


                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (!isLoading)
                    CustomLineChart(
                      data: Spo2Data,
                      minY: minSPo2Data,
                      maxY: maxSPo2Data,
                      lineColor: const Color(0XFF9C6AFF),
                      title: 'Pulse Ox',
                    ),
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  if (!isLoading)
                    CustomLineChart(
                      data: BPMData,
                      minY: minBPMData,
                      maxY: maxBPMData,
                      lineColor: const Color(0XFF9C6AFF),
                      title: 'BP',
                    ),
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  if (!isLoading)
                    CustomLineChart(
                      data: ECGData,
                      minY: minECGData - 500,
                      maxY: maxECGData + 500,
                      lineColor: const Color(0XFF9C6AFF),
                      title: 'ECG',
                    ),
                ],
              )
            ),
          ]
        ),
      ),
    );
  }
}
