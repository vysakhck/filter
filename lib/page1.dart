import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
      body: Column(children: [
        Center(
            child: Container(
                height: 240,
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
                              fontSize: 18, fontWeight: FontWeight.bold)),
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
                          style: TextStyle(fontSize: 16),
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
                          style: TextStyle(fontSize: 16),
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
                          style: TextStyle(fontSize: 16),
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
                          style: TextStyle(fontSize: 16),
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
              const Text(
                'Cuisines',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Suitable diets',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Experiences',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Meal Periods',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Dress Codes',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Neighbourhoods',
                style: TextStyle(fontWeight: FontWeight.bold),
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
              const Text(
                'Price Ranges',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                iconSize: 30,
              )
            ],
          ),
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('SHOW 64 RESULTS'),
          backgroundColor: Colors.black54,
        )
      ]),
    );
  }
}
