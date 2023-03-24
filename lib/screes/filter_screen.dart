import 'package:filter/model/filter.model.dart';
import 'package:filter/services/data_service.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  final DataService dataService = DataService();
  FilterScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
          future: dataService.getData(),
          builder: (context, snapshot) {
            var data = snapshot.data ?? [];

            if (data.isEmpty) {
              return const Center(child: Text('No data found'));
            }

            return FilterList(filterdata: data);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('SHOW 64 RESULTS'),
        backgroundColor: Colors.black54,
      ),
    );
  }
}

class FilterList extends StatefulWidget {
  final List<FilterData> filterdata;
  const FilterList({super.key, required this.filterdata});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  @override
  Widget build(BuildContext context) {
    var data = widget.filterdata;
    return ListView(children: [
      SizedBox(
        height: 48,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: data
              .expand(
                (element) => element.taxonomies.where((e) => e.isChecked).map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RawChip(
                          label: Text(e.name ?? ''),
                          deleteIcon: const Icon(Icons.close),
                          onDeleted: () {
                            setState(() {
                              e.isChecked = !e.isChecked;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
              )
              .toList(),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(8.0),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
        ),
      ),
      ...List.generate(
        data.length,
        (i) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            textColor: Colors.black,
            title: Row(
              children: [
                Text(data[i].name),
                if (data[i].taxonomyCounnt != 0)
                  Text(
                    '\t(${data[i].taxonomyCounnt})',
                    style: const TextStyle(color: Color(0xFF782544)),
                  )
              ],
            ),
            children: [
              for (Taxonomy taxonomy in data[i].taxonomies)
                ListTile(
                  leading: taxonomy.isChecked
                      ? const Icon(
                          Icons.radio_button_checked,
                          color: Color(0xFF782544),
                        )
                      : const Icon(Icons.radio_button_off),
                  onTap: () {
                    setState(() {
                      taxonomy.isChecked = !taxonomy.isChecked;
                    });
                  },
                  title: Text(taxonomy.name ?? ''),
                )
            ],
          ),
        ),
      ),
    ]);
  }
}
