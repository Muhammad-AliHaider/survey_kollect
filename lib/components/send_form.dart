import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:survey_kollect/components/custom_card_forms_select.dart';
import 'package:survey_kollect/components/questions_page.dart';
import 'package:survey_kollect/data/form_data.dart';

class SendForm extends StatefulWidget {
  const SendForm({Key? key}) : super(key: key);

  @override
  State<SendForm> createState() => _SendFormState();
}

class _SendFormState extends State<SendForm> {
  List _selectedForms = [];
  bool? _showSelect = false;

  void _handleCheck(int formId) {
    print("its called");
    if (_selectedForms.contains(formId)) {
      setState(() {
        _selectedForms.remove(formId);
      });
    } else {
      setState(() {
        _selectedForms.add(formId);
      });
    }
  }

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
        child: Stack(children: [
          Container(
            child: ListView.builder(
                itemCount: MockData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onLongPress: () => {
                      HapticFeedback.lightImpact(),
                      setState(() {
                        _showSelect = _showSelect == true ? false : true;
                      })
                    },
                    child: CustomCardForms(
                      handleCheck: () => {_handleCheck(index)},
                      showSelect: _showSelect,
                      selectedForms:
                          _selectedForms.contains(index) ? true : false,
                      formName: MockData[index]["Name"],
                      formDetails: MockData[index]["Details"],
                      icon: Icons.gps_fixed_outlined,
                      showIcon: MockData[index]["Icon"],
                      onClick: () =>
                          {_showSelect == true ? _handleCheck(index) : () {}},
                    ),
                  );
                }),
          ),
          Align(
              alignment: AlignmentGeometry.lerp(
                  Alignment.bottomCenter, Alignment.bottomCenter, 0.9)!,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 112, 193, 220),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  label: const Text("Send Selected Forms"),
                  icon: const Icon(Icons.send),
                  onPressed: () => {})),
        ]),
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
