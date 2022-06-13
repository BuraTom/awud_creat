import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:pie_chart/pie_chart.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DropDown(),
        // SizedBox(height: 10),
        ProgressIndicatorL(),
        PieChartt(),
      ],
    );
  }
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
      icon: const Icon(Icons.arrow_downward),
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

class PieChartt extends StatefulWidget {
  const PieChartt({Key? key}) : super(key: key);

  @override
  _PieCharttState createState() => _PieCharttState();
}

class _PieCharttState extends State<PieChartt> {
  List<_StreamData> data = [
    _StreamData('Jan', 35),
    _StreamData('Feb', 28),
    _StreamData('Mar', 34),
    _StreamData('Apr', 32),
    _StreamData('May', 40)
  ];
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };
  final colorList = <Color>[
    Colors.greenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 5.0,
        child: Column(children: [
          PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: colorList,
            initialAngleInDegree: 90,
            chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "HYBRID",
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
          //Initialize the chart widget
//          SfCartesianChart(
//              primaryXAxis: CategoryAxis(),
//              // Chart title
//              title: ChartTitle(text: 'streaming analysis'),
//              // Enable legend
//              legend: Legend(isVisible: true),
//              // Enable tooltip
//              tooltipBehavior: TooltipBehavior(enable: true),
//              series: <ChartSeries<_StreamData, String>>[
//                LineSeries<_StreamData, String>(
//                    dataSource: data,
//                    xValueMapper: (_StreamData streams, _) => streams.year,
//                    yValueMapper: (_StreamData streams, _) => streams.streams,
//                    name: 'streams',
//                    // Enable data label
//                    dataLabelSettings: DataLabelSettings(isVisible: true))
//              ]),
//        Expanded(
//          child: Padding(
//            padding: const EdgeInsets.all(8.0),
//            //Initialize the spark charts widget
//            child: SfSparkLineChart.custom(
//              //Enable the trackball
//              trackball: const SparkChartTrackball(
//                  activationMode: SparkChartActivationMode.tap),
//              //Enable marker
//              marker: const SparkChartMarker(
//                  displayMode: SparkChartMarkerDisplayMode.all),
//              //Enable data label
//              labelDisplayMode: SparkChartLabelDisplayMode.all,
//              xValueMapper: (int index) => data[index].year,
//              yValueMapper: (int index) => data[index].streams,
//              dataCount: 5,
//            ),
//          ),
//        )
        ]),
      ),
    );
  }
}

class _StreamData {
  _StreamData(this.year, this.streams);

  final String year;
  final double streams;
}
