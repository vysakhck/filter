import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEEEEE),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black87,
        ),
        title: const Text(
          'Filter Option',
          style: TextStyle(
              fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: ListView(
        children: <Widget>[
          Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFE0E0E0),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'X',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Contemporary',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFE0E0E0),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'X',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Vegetarian',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFE0E0E0),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'X',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Pescatarian',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
                child: Container(
                    // height: 240,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Sort by',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.radio_button_checked),
                              color: const Color(0xFF782544),
                            ),
                            const Text(
                              'Nearest to me',
                              style: TextStyle(fontSize: 14),
                            ),
                            const Text(
                              '(default)',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.radio_button_unchecked),
                              color: Colors.black87,
                            ),
                            const Text(
                              'Trending this week',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.radio_button_unchecked),
                              color: Colors.black87,
                            ),
                            const Text(
                              'Newest Added',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.radio_button_unchecked),
                              color: Colors.black87,
                            ),
                            const Text(
                              'Alphabetical',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 14,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Cuisines',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '(1)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF782544),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
                // height: 460,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: const [
                                Text('Suitable Diets',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  '(2)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF782544),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            iconSize: 30,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          // color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Diery-Free',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          color: Colors.black87,
                        ),
                        const Text(
                          'Halal',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_checked),
                          color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Vegetarian',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_checked),
                          color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Pescatarian',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          // color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Vegan',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          // color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Low-Carb',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          // color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Gluten-Free',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.radio_button_unchecked),
                          // color: const Color(0xFF782544),
                        ),
                        const Text(
                          'Lactos',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                )),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('SHOW 0 RESULTS'),
              backgroundColor: Colors.black54,
            )
          ]),
        ],
      ),
    );
  }
}
