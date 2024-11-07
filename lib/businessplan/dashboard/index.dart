import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String _selectedValue = 'Semaine';
  String _selectedstat = 'Lorem ipsum';
  String _selectedstatPie = 'Mois';
  late List<_ChartData> barChartData;
  late List<_PieData> pieChartData;
  late List<_ChartData> splineChartData;
  int _bottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
    barChartData = [
      _ChartData('Jan', 55, 98),
      _ChartData('Fev', 51, 130),
      _ChartData('Mar', 110, 70),
      _ChartData('Avr', 51, 150),
      _ChartData('Mai', 110, 153),
      _ChartData('Jui', 70, 130),
      _ChartData('Jul', 70, 132),
    ];
    splineChartData = [
      _ChartData('Dim', 55, 98),
      _ChartData('Lun', 51, 130),
      _ChartData('Mar', 110, 70),
      _ChartData('Mer', 51, 150),
      _ChartData('Jeu', 110, 153),
      _ChartData('Ven', 70, 130),
      _ChartData('Sam', 70, 132),
    ];

    pieChartData = [
      _PieData('Standard', 70, const Color(0XFF0A9C55)),
      _PieData('Urgentes', 16, const Color(0XFFEC1C24)),
      _PieData('Annulées', 14, const Color(0XFFFFA602)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFECECED),
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Pronto Business',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0XFFEC1C24),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Row(children: [
                            Text(
                              'Type de forfait',
                              style: TextStyle(
                                  color: Color(0XFFFAFAFA),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            )
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Row(children: [
                            Text(
                              'Forfait Confort',
                              style: TextStyle(
                                  color: Color(0XFFFAFAFA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins'),
                            )
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(80, 255, 255, 255),
                                borderRadius: BorderRadius.circular(17)),
                            child: const Row(children: [
                              Text(
                                'Exp 23 Nov 2024',
                                style: TextStyle(
                                    color: Color(0XFFFAFAFA),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'),
                              )
                            ]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Container(
                                    width: 171,
                                    height: 14,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFE9E6E0),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(18),
                                            bottomRight: Radius.circular(18))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 171 - 71,
                                          height: 14,
                                          decoration: BoxDecoration(
                                            color: Color(0XFFC5BDAE),
                                          ),
                                          child: Text(''),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/plancar.png',
                                width: 125,
                                height: 82,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(31, 10, 156, 85),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0XFF0A9C55))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(96, 10, 156, 85),
                            child: FaIcon(
                              FontAwesomeIcons.carSide,
                              color: Color(0XFF0A9C55),
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Courses effectués',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF0A9C55)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                '18',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF0A9C55)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(29, 255, 166, 2),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0XFFFFA602))),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(78, 255, 166, 2),
                            child: FaIcon(
                              FontAwesomeIcons.car,
                              color: Color(0XFFFFA602),
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Courses restantes',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFFFFA602)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFFFFA602)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Les statiques',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 117,
                      decoration: BoxDecoration(
                          color: Color(0XFFF8F7F5),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isDense: true,
                          isExpanded: true,
                          padding: EdgeInsets.only(left: 10),
                          value: _selectedValue,
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          items: <String>[
                            'Semaine', // Assurez-vous que cela correspond exactement
                            'Mois'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 11),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Titre de la stat...',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFFF8F7F5),
                            borderRadius: BorderRadius.circular(8)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            padding: EdgeInsets.only(left: 10),
                            value: _selectedstat,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            items: <String>[
                              'Lorem ipsum', // Assurez-vous que cela correspond exactement
                              'Mois'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedstat = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Graphe à intégrer
              SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                primaryYAxis: const NumericAxis(
                  majorGridLines: MajorGridLines(color: Color(0xFFDFE5EE)),
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <SplineSeries>[
                  SplineSeries<_ChartData, String>(
                    name: 'Dépot',
                    dataSource: splineChartData,
                    xValueMapper: (_ChartData data, _) => data.date,
                    yValueMapper: (_ChartData data, _) => data.depot,
                    color: Color.fromARGB(127, 167, 167, 167),
                  ),
                  SplineSeries<_ChartData, String>(
                    name: 'Dépenses',
                    dataSource: splineChartData,
                    xValueMapper: (_ChartData data, _) => data.date,
                    yValueMapper: (_ChartData data, _) => data.depenses,
                    color: const Color(0XFF0A9C55),
                  ),
                ],
              ),

              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Titre de la stat...',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFFF8F7F5),
                            borderRadius: BorderRadius.circular(8)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            padding: EdgeInsets.only(left: 10),
                            value: _selectedstat,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            items: <String>[
                              'Lorem ipsum', // Assurez-vous que cela correspond exactement
                              'Mois'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedstat = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SfCartesianChart(
                primaryXAxis: const CategoryAxis(), // Axe X visible
                primaryYAxis: const NumericAxis(
                  isVisible: false, // Masquer l'axe Y
                  majorGridLines: MajorGridLines(color: Color(0xFFDFE5EE)),
                ),
                legend: Legend(
                  isVisible: true,
                  position:
                      LegendPosition.top, // Positionner la légende en haut
                  alignment: ChartAlignment.near, // Aligner à gauche
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <StackedColumnSeries>[
                  StackedColumnSeries<_ChartData, String>(
                    name: 'Débit',
                    dataSource: barChartData,
                    xValueMapper: (_ChartData data, _) => data.date,
                    yValueMapper: (_ChartData data, _) => data.depot,
                    color: const Color(0XFFEF4248),
                    // borderRadius: BorderRadius.vertical(
                    //   top: Radius.circular(8), // Rayon uniquement en haut
                    // ),
                    legendIconType: LegendIconType
                        .circle, // Icône de légende en cercle rempli
                    width: 0.5,
                  ),
                  StackedColumnSeries<_ChartData, String>(
                    name: 'Crédit',
                    dataSource: barChartData,
                    xValueMapper: (_ChartData data, _) => data.date,
                    yValueMapper: (_ChartData data, _) => data.depenses,
                    color: const Color(0XFF0A9C55),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(18), // Rayon uniquement en haut
                    ),
                    legendIconType: LegendIconType
                        .circle, // Icône de légende en cercle rempli
                    width: 0.5,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Répartition par type de course',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFFF8F7F5),
                            borderRadius: BorderRadius.circular(8)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isDense: true,
                            isExpanded: true,
                            padding: EdgeInsets.only(left: 10),
                            value: _selectedstatPie,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            items: <String>[
                              'Lorem ipsum', // Assurez-vous que cela correspond exactement
                              'Mois'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedstatPie = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SfCircularChart(
                  legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.scroll,
                    position: LegendPosition.bottom,
                    itemPadding: 5,
                  ),
                  series: <CircularSeries>[
                    DoughnutSeries<_PieData, String>(
                      dataSource: pieChartData,
                      pointColorMapper: (_PieData data, _) => data.color,
                      xValueMapper: (_PieData data, _) => data.category,
                      yValueMapper: (_PieData data, _) => data.amount,
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true),
                      cornerStyle: CornerStyle.bothFlat, // Coins arrondis
                      radius: '80%', // Ajuster le rayon si nécessaire
                      innerRadius:
                          '60%', // Ajuster le rayon intérieur si nécessaire
                      strokeWidth: 4, // Largeur de la bordure
                      strokeColor: Colors
                          .white, // Couleur de la bordure pour simuler l'espace
                      legendIconType: LegendIconType
                          .circle, // Icône de légende en cercle rempli
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.date, this.depot, this.depenses);

  final String date;
  final double depot;
  final double depenses;
}

class _PieData {
  _PieData(this.category, this.amount, this.color);

  final String category;
  final double amount;
  final Color color;
}
