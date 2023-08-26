import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardviewWidget extends StatefulWidget {
  const CardviewWidget({super.key});

  @override
  State<CardviewWidget> createState() => _CardviewWidgetState();
}

class _CardviewWidgetState extends State<CardviewWidget> {
  final PageController _cardCtr = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const FirstCard(),
    const SecondCard(),
    const ThirdCard(),
  ];

  int _activeCard = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_activeCard < _pages.length) {
        _activeCard++;
      } else {
        _activeCard = 0;
      }
      _cardCtr.animateToPage(_activeCard,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.white,
        height: 140,
        child: Card(
          color: Colors.deepPurple[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _cardCtr,
                  onPageChanged: (int page) {
                    setState(() {
                      _activeCard = page;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages[index % _pages.length];
                  },
                ),
              ),
              Container(
                height: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                      padding: EdgeInsets.all(2),
                      child: InkWell(
                        onTap: () {
                          _cardCtr.animateToPage(
                            index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _activeCard == index
                              ? Colors.white
                              : Colors.white30,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Spacer(),
          Column(
            children: [
              Text(
                'Comercial',
              ),
              Text(
                'a',
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Spacer(),
          Column(
            children: [
              Text(
                'Comercial',
              ),
              Text(
                'b',
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Spacer(),
          Column(
            children: [
              Text(
                'Comercial',
              ),
              Text(
                'c',
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
