import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:survey_kollect/components/font_manager.dart';

class CustomCardForms extends StatelessWidget {
  CustomCardForms(
      {Key? key,
      required this.formName,
      required this.formDetails,
      required this.icon,
      required this.showIcon})
      : super(key: key);

  final String formName;
  final String formDetails;
  final IconData icon;
  final bool showIcon;

  FontManager fontManager = FontManager.getInstance();

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).colorScheme.primary,
      color: Theme.of(context).colorScheme.surface,
      child: ListTile(
        leading: Icon(Icons.article_rounded),
        title: Text(
          formName,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontManager.getCurrentHeadingSize().toDouble()),
        ),
        subtitle: Text(formDetails,
            style: TextStyle(
                color: Colors.black,
                fontSize: fontManager.getCurrentSubHeadingSize().toDouble())),
        trailing: showIcon ? Icon(icon) : null,
        onTap: () => {HapticFeedback.lightImpact()},
      ),
    );
  }
}
