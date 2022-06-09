import 'package:flutter/widgets.dart';

class IconText extends StatelessWidget {
  final String? text;
  final IconData? iconDataL;
  final IconData? iconDataR;
  final TextStyle? style;

  /// icon padding
  final EdgeInsetsGeometry? padding;

  const IconText(
    this.text, {
    Key? key,
    this.iconDataL,
    this.iconDataR,
    this.padding,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: style, children: [
        if (iconDataL != null)
          WidgetSpan(
              child: IconTheme(
            data: IconThemeData(size: (style?.fontSize ?? 15) + 1, color: style?.color),
            child: padding == null
                ? Icon(iconDataL)
                : Padding(
                    padding: padding!,
                    child: Icon(iconDataL),
                  ),
          )),
        TextSpan(text: text ?? "", style: style),
        if (iconDataR != null)
          WidgetSpan(
              child: IconTheme(
            data: IconThemeData(size: (style?.fontSize ?? 15) + 1, color: style?.color),
            child: padding == null
                ? Icon(iconDataR)
                : Padding(
                    padding: padding!,
                    child: Icon(iconDataR),
                  ),
          )),
      ]),
      textAlign: TextAlign.start,
    );
  }
}
