import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:survey_kollect/components/custom_card_forms_select.dart';
import 'package:survey_kollect/data/form_data.dart';

class FormsSelect extends StatefulWidget {
  const FormsSelect({Key? key}) : super(key: key);

  @override
  State<FormsSelect> createState() => _FormsSelectState();
}

class _FormsSelectState extends State<FormsSelect> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> MockData = MockDataFormData;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Forms Select'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () => {
                      showSearch(context: context, delegate: MySearchDelegate())
                    },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert))
          ],
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
        child: ListView.builder(
            itemCount: MockData.length,
            itemBuilder: (context, index) {
              return CustomCardForms(
                  formName: MockData[index]["Name"],
                  formDetails: MockData[index]["Details"],
                  icon: Icons.gps_fixed_outlined,
                  showIcon: MockData[index]["Icon"]);
            }),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isNotEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => {close(context, null)},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
