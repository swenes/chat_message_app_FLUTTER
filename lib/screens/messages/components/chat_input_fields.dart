import 'package:flutter/material.dart';

import '../../../constants.dart';


class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [BoxShadow(blurRadius: 32, offset: Offset(0, 4), color: Color(0xff087949).withOpacity(0.3))]),
      child: SafeArea(
          child: Row(
        children: [
          Icon(Icons.mic, color: kPrimaryColor),
          SizedBox(width: kDefaultPadding),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.07),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                  ),
                  SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Type Message'),
                    ),
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                  ),
                  SizedBox(width: kDefaultPadding / 4),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
