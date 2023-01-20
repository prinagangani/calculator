import 'package:flutter/material.dart';

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  String f = '';
  String s = '';
  String l = '';
  String ans = '';

  double fi = 0;
  double li = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade400,
                              blurRadius: 500,
                              spreadRadius: 100)
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170, top: 600),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 250,
                              spreadRadius: 50)
                        ]),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 696,
                  color: Colors.transparent.withOpacity(0.40),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        height: 250,
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$f",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                                Text("$s",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 30)),
                                Text("$l",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Text("$ans",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 70))),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  f = '';
                                  s = '';
                                  l = '';
                                  ans = '';
                                });
                              },
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  s = '+';
                                });
                              },
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 50),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  s = '-';
                                });
                              },
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 50),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  s = 'X';
                                });
                              },
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "X",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '7';
                                          } else {
                                            f = f + '7';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "7",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '8';
                                          } else {
                                            f = f + '8';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "8",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '9';
                                          } else {
                                            f = f + '9';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "9",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '4';
                                          } else {
                                            f = f + '4';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "4",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '5';
                                          } else {
                                            f = f + '5';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "5",
                                          style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '6';
                                          } else {
                                            f = f + '6';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    s = '/';
                                  });
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text("/",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      s = '%';
                                    });
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Text("%",
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '1';
                                          } else {
                                            f = f + '1';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '2';
                                          } else {
                                            f = f + '2';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (s == '+' ||
                                              s == '-' ||
                                              s == 'X' ||
                                              s == '/' ||
                                              s == '%') {
                                            l = l + '3';
                                          } else {
                                            f = f + '3';
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '00';
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "00",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '0';
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '.';
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          ".",
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  li = double.parse(l);
                                  fi = double.parse(f);
                                  if (s == '+') {
                                    ans = "= ${fi + li}";
                                  } else if (s == '-') {
                                    ans = "= ${fi - li}";
                                  } else if (s == 'X') {
                                    ans = "= ${fi * li}";
                                  } else if (s == '/') {
                                    ans = "= ${fi / li}";
                                  } else if (s == '%') {
                                    ans = "= ${fi % li}";
                                  }
                                });
                              },
                              child: Container(
                                width: 50,
                                height: 130,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text("=",
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.40),
            borderRadius: BorderRadius.circular(20)),
        child: Text("$data",
            style: TextStyle(fontSize: 50, color: Colors.blueAccent)),
      ),
    );
  }
}