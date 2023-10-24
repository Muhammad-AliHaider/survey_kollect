import 'package:flutter/material.dart';
import 'package:survey_kollect/components/font_manager.dart';

// ignore: must_be_immutable
class QuestionsPage extends StatefulWidget {
  QuestionsPage({
    Key? key,
    required this.question,
    required this.getLocation,
    required this.isText,
    required this.isRadio,
    required this.isRequired,
    required this.title,
    required this.questionNumber,
    required this.skipTo,
  }) : super(key: key);

  String? question;
  int? questionNumber;
  bool? getLocation;
  bool? isText;
  bool? isRadio;
  bool? isRequired;
  String? title;
  int? skipTo;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  FontManager _fontManager = FontManager.getInstance();
  String? radioManager = "";
  bool? isAnswered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title ?? "No Heading"),
            actions: [
              IconButton(onPressed: () => {}, icon: const Icon(Icons.save)),
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.add_to_home_screen_sharp)),
            ],
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false),
        body: Card(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widget.isRequired != false
                    ? const Text("*",
                        style: TextStyle(color: Colors.red, fontSize: 10))
                    : Container(),
                Text(widget.question ?? "No Question",
                    style: TextStyle(
                        fontFamily: _fontManager.getPrimaryFontFamily(),
                        fontSize:
                            _fontManager.getCurrentHeadingSize().toDouble()))
              ],
            ),
            widget.getLocation != false
                ? ElevatedButton(
                    onPressed: () => {
                          // hit get location
                        },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor:
                          Theme.of(context).colorScheme.primary.withAlpha(255),
                      backgroundColor:
                          Theme.of(context).colorScheme.primary.withAlpha(35),
                    ),
                    child: Text("Get Location"))
                : Container(),
            widget.isRadio != false
                ? Column(
                    children: [
                      RadioListTile(
                          title: const Text("Yes"),
                          value: "Yes",
                          groupValue: radioManager,
                          onChanged: (value) {
                            isAnswered = true;
                            setState(() {
                              radioManager = value.toString();
                            });
                          }),
                      RadioListTile(
                          title: const Text("No"),
                          value: "No",
                          groupValue: radioManager,
                          onChanged: (value) {
                            isAnswered = true;
                            setState(() {
                              radioManager = value.toString();
                            });
                          })
                    ],
                  )
                : Container(),
            widget.isText != false
                ? Container(
                    color:
                        Theme.of(context).colorScheme.secondary.withAlpha(15),
                    child: TextField(
                      minLines: 1,
                      textAlignVertical: const TextAlignVertical(y: 0.5),
                      onTap: () => {isAnswered = true},
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 186, 0, 0),
                        label: const Text("Your Answer"),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                : Container()
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => {
                  if (value == 0)
                    {Navigator.pop(context)}
                  else
                    {
                      if ((isAnswered == true && widget.isRequired == true) ||
                          widget.isRequired == false)
                        {
                          print(isAnswered),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuestionsPage(
                                      question:
                                          "Question ${(widget.questionNumber ?? 0) + 1}",
                                      getLocation: true,
                                      isText: true,
                                      isRadio: true,
                                      isRequired: true,
                                      skipTo: null,
                                      questionNumber:
                                          (widget.questionNumber ?? 0) + 1,
                                      title: "Questions")))
                        }
                      else
                        {
                          print(isAnswered),
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please answer the question"),
                              duration: Duration(seconds: 1),
                            ),
                          )
                        }
                    }
                },
            items: const [
              BottomNavigationBarItem(
                  label: "Back",
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  tooltip: "Go Back"),
              BottomNavigationBarItem(
                  label: "Next",
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  tooltip: "Next"),
            ]));
  }
}
