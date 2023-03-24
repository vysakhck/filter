import 'package:filter/model/filter.model.dart';
import 'package:filter/services/data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  DataService dataService = DataService();

  int curentIndx = 0;
  bool isOpen = false;
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
      body: SingleChildScrollView(
          child: FutureBuilder(
        future: dataService.getData(),
        builder: (context, snapshot) {
          var data = snapshot.data ?? [];

          if (data.isEmpty) {
            return const Center(
              child: Text('No data found'),
            );
          }

          return ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                curentIndx = panelIndex;
                isOpen = !isExpanded;
              });
            },
            children: List<ExpansionPanel>.generate(
              data.length,
              (i) => ExpansionPanel(
                isExpanded: i == curentIndx && isOpen,
                headerBuilder: (context, isExpanded) => ListTile(
                  title: Text(data[i].name),
                ),
                body: Column(
                  children: [
                    for (Taxonomy taxonomy in data[i].taxonomies)
                      RadioListTile(
                        value: taxonomy.slug,
                        groupValue: data[i].slug,
                        selected: taxonomy.isChecked,
                        onChanged: (value) {
                          setState(() {
                            taxonomy.isChecked = !taxonomy.isChecked;
                          });
                        },
                        title: Text(taxonomy.name ?? ''),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
