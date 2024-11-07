import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFECECED),
        automaticallyImplyLeading: false,
        centerTitle: false,
        toolbarHeight: 70,
        title: Row(
          children: [
            Expanded(
              child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Recherche',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Color(0XFFC4C4C4),
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0XFFC4C4C4),
                      size: 20,
                    ),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Image.asset(
                          'assets/images/ListMagnifyingGlass.png',
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:
                          const BorderSide(color: Color(0XFFCFCECE), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                          color: Color(0xFFF00020), width: 1.5),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0XFFE9E6E0),
                    borderRadius: BorderRadius.circular(5)),
                child: TabBar(
                  indicatorPadding: const EdgeInsets.all(5),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: const Color(0XFFDBD6CD),
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0XFFEC1C24),
                  ),
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: "En cours",
                    ),
                    Tab(
                      text: "Passés",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ...[1, 2, 3].map(
                (e) => Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0XFFF0EEEA),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'DOSSA Justin',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22)),
                            child: Text(
                              '24 Oct 2024 18:07',
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Color(0XFFD7D2C7),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      size: 20,
                                      color: Color(0XFFec1c24),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFFCD9DB),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(height: 16),
                                Image.asset('assets/images/line.png'),
                                const SizedBox(height: 16),
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Icon(
                                    Icons.location_on_rounded,
                                    size: 20,
                                    color: Color(0XFF0b7b69),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFA4F4E7),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 10,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Départ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF7A7474)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'St Jean, Womey, Abomey Calavi',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0XFF221F1F)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 26),
                                Container(
                                  padding: const EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Arrivée',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF7A7474)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Super marché dupon',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0XFF221F1F)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Color(0XFFD7D2C7),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  '3 000 FCFA',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                clipBehavior: Clip.none,
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  // Fin de la sélection
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Détails',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 18,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
