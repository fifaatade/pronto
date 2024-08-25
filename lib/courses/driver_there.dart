import "package:flutter/material.dart";

class DriverThere extends StatefulWidget {
  const DriverThere({super.key});

  @override
  State<DriverThere> createState() => _DriverThereState();
}

class _DriverThereState extends State<DriverThere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFCFCF7),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(181, 240, 238, 234),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Votre chauffeur est là",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: 101,
                    height: 101,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/driver_profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 20,
                    child: Container(
                        width: 58,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: "Poppins"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12.26,
                            )
                          ],
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Jake Muss",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/driver_there.png"),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF0EEEA)),
                        child: Icon(
                          Icons.confirmation_number_outlined,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Numéro d’immatriculation",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF908B8B),
                                fontFamily: "Poppins"),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            "BV 0016 RB",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFF221F1F),
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF0EEEA)),
                        child: Icon(
                          Icons.sell_outlined,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marque du véhicule",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF908B8B),
                                fontFamily: "Poppins"),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            "Suzuki Alto",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFF221F1F),
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0XFFF0EEEA)),
                    child: Icon(
                      Icons.format_color_fill_rounded,
                      size: 16,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Couleur du véhicule ",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF908B8B),
                            fontFamily: "Poppins"),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        " Blanc",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF221F1F),
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0XFFFFF1F2),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Color(0XFFEC1C24),
                      size: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Flexible(
                        child: Text(
                      "Avant de monter dans le véhicule veillez vérifier les informations du véhicule",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFEC1C24),
                        fontFamily: "Poppins",
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
