import 'package:flutter/material.dart';

/// icon text
class ItemWithIcon extends StatelessWidget {
  final Text? text;
  final String? content;
  final Icon? iconL;
  final IconData? iconDataL;
  final ImageProvider? imageProvider;
  final bool isNeedDivider;
  final bool isNeedRightIcon;

  const ItemWithIcon({
    Key? key,
    this.text,
    this.iconL,
    this.isNeedDivider = true,
    this.isNeedRightIcon = true,
    this.content,
    this.iconDataL,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  if (iconL != null)
                    Expanded(
                        child: Container(margin: const EdgeInsets.only(left: 16, right: 16), child: iconL), flex: 0),
                  if (iconDataL != null)
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 16, right: 16),
                            child: Icon(iconDataL, color: const Color(0xffb2b2b2), size: 25)),
                        flex: 0),
                  if (imageProvider != null)
                    Expanded(
                        child: Container(
                            width: 30,
                            margin: const EdgeInsets.only(left: 16, right: 16),
                            child: Image(image: imageProvider!)),
                        flex: 0),
                  if (text != null)
                    Expanded(
                        child: Container(margin: const EdgeInsets.only(left: 16, right: 16), child: text), flex: 1),
                  if (content != null)
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 16, right: 16),
                            child: Text(content ?? "", style: const TextStyle(fontSize: 18))),
                        flex: 1),
                  if (isNeedRightIcon)
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 16, right: 16),
                            child: const Icon(Icons.arrow_forward_ios, color: Color(0xffb2b2b2), size: 16)),
                        flex: 0),
                ],
              ),
              flex: 1),
          Visibility(
              visible: isNeedDivider,
              child: const Expanded(
                  child: Divider(
                    color: Color(0xffe5e5e5),
                    height: 1,
                    thickness: 1,
                    indent: 70,
                    endIndent: 0,
                  ),
                  flex: 0))
        ],
      ),
    );
  }
}
