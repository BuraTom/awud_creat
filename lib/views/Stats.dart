// import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// //import 'package:syncfusion_flutter_charts/charts.dart';
// //import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:pie_chart/pie_chart.dart';

// class Stats extends StatelessWidget {
//   const Stats({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         DropDown(),
//         // SizedBox(height: 10),
//         ProgressIndicatorL(),
//        // PieChartt(),
//       ],
//     );
//   }
// }

// class PieChartt extends StatefulWidget {
//   const PieChartt({Key? key}) : super(key: key);

//   @override
//   _PieCharttState createState() => _PieCharttState();
// }

// class _PieCharttState extends State<PieChartt> {
//   List<_StreamData> data = [
//     _StreamData('Jan', 35),
//     _StreamData('Feb', 28),
//     _StreamData('Mar', 34),
//     _StreamData('Apr', 32),
//     _StreamData('May', 40)
//   ];
//   Map<String, double> dataMap = {
//     "Flutter": 5,
//     "React": 3,
//     "Xamarin": 2,
//     "Ionic": 2,
//   };
//   final colorList = <Color>[
//     Colors.greenAccent,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Card(
//         elevation: 5.0,
//         child: Column(children: [
//           PieChart(
//             dataMap: dataMap,
//             animationDuration: Duration(milliseconds: 800),
//             chartLegendSpacing: 32,
//             chartRadius: MediaQuery.of(context).size.width / 3.2,
//             colorList: colorList,
//             initialAngleInDegree: 90,
//             chartType: ChartType.ring,
//             ringStrokeWidth: 32,
//             centerText: "HYBRID",
//             legendOptions: const LegendOptions(
//               showLegendsInRow: false,
//               legendPosition: LegendPosition.right,
//               showLegends: true,
//               legendShape: BoxShape.circle,
//               legendTextStyle: TextStyle(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             chartValuesOptions: const ChartValuesOptions(
//               showChartValueBackground: true,
//               showChartValues: true,
//               showChartValuesInPercentage: false,
//               showChartValuesOutside: false,
//               decimalPlaces: 1,
//             ),
//             // gradientList: ---To add gradient colors---
//             // emptyColorGradient: ---Empty Color gradient---
//           ),
//           //Initialize the chart widget
// //          SfCartesianChart(
// //              primaryXAxis: CategoryAxis(),
// //              // Chart title
// //              title: ChartTitle(text: 'streaming analysis'),
// //              // Enable legend
// //              legend: Legend(isVisible: true),
// //              // Enable tooltip
// //              tooltipBehavior: TooltipBehavior(enable: true),
// //              series: <ChartSeries<_StreamData, String>>[
// //                LineSeries<_StreamData, String>(
// //                    dataSource: data,
// //                    xValueMapper: (_StreamData streams, _) => streams.year,
// //                    yValueMapper: (_StreamData streams, _) => streams.streams,
// //                    name: 'streams',
// //                    // Enable data label
// //                    dataLabelSettings: DataLabelSettings(isVisible: true))
// //              ]),
// //        Expanded(
// //          child: Padding(
// //            padding: const EdgeInsets.all(8.0),
// //            //Initialize the spark charts widget
// //            child: SfSparkLineChart.custom(
// //              //Enable the trackball
// //              trackball: const SparkChartTrackball(
// //                  activationMode: SparkChartActivationMode.tap),
// //              //Enable marker
// //              marker: const SparkChartMarker(
// //                  displayMode: SparkChartMarkerDisplayMode.all),
// //              //Enable data label
// //              labelDisplayMode: SparkChartLabelDisplayMode.all,
// //              xValueMapper: (int index) => data[index].year,
// //              yValueMapper: (int index) => data[index].streams,
// //              dataCount: 5,
// //            ),
// //          ),
// //        )
//         ]),
//       ),
//     );
//   }
// }

// class _StreamData {
//   _StreamData(this.year, this.streams);

//   final String year;
//   final double streams;
// }

import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:percent_indicator/linear_percent_indicator.dart';

class Stats extends StatelessWidget {
  // Defining the data
  final data = [
    new Streamdata(0, 1500000),
    new Streamdata(1, 1735000),
    new Streamdata(2, 1678000),
    new Streamdata(3, 1890000),
    new Streamdata(4, 1907000),
    new Streamdata(5, 2300000),
    new Streamdata(6, 2360000),
    new Streamdata(7, 1980000),
    new Streamdata(8, 2654000),
    new Streamdata(9, 2789070),
    new Streamdata(10, 3020000),
    new Streamdata(11, 3245900),
    new Streamdata(12, 4098500),
    new Streamdata(13, 4500000),
    new Streamdata(14, 4456500),
    new Streamdata(15, 3900500),
    new Streamdata(16, 5123400),
    new Streamdata(17, 5589000),
    new Streamdata(18, 5940000),
    new Streamdata(19, 6367000),
  ];

  _getSeriesData() {
    List<charts.Series<Streamdata, int>> series = [
      charts.Series(
          id: "streams",
          data: data,
          domainFn: (Streamdata series, _) => series.year,
          measureFn: (Streamdata series, _) => series.streams,
          colorFn: (Streamdata series, _) =>
              charts.MaterialPalette.blue.shadeDefault)
    ];
    return series;
  }

  Widget customTextButton(txt) {
    return TextButton(
        child: Text(txt, style: TextStyle(fontSize: 14)),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.orangeAccent),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)))),
        onPressed: () => {
              print('pppp'),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 650,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Account Snapshot",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          DropDown(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customTextButton('Listeners'),
                            SizedBox(width: 10),
                            customTextButton('Plays'),
                            SizedBox(width: 10),
                            customTextButton('Favourites'),
                            SizedBox(width: 10),
                            customTextButton('Followers'),
                            SizedBox(width: 10),
                            customTextButton('downloads'),
                            SizedBox(width: 10),
                            customTextButton('Playlist adds'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: new charts.LineChart(
                          _getSeriesData(),
                          animate: true,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class Streamdata {
  final int year;
  final int streams;

  Streamdata(this.year, this.streams);
}

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'yesterday';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: BorderRadius.circular(5.0),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['yesterday', 'last 7days', 'last month', 'total']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class ProgressIndicatorL extends StatefulWidget {
  const ProgressIndicatorL({Key? key}) : super(key: key);

  @override
  _ProgressIndicatorLState createState() => _ProgressIndicatorLState();
}

class _ProgressIndicatorLState extends State<ProgressIndicatorL> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              trailing: Text('female'),
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: const Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
