import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Demo App".text.xl4.bold.color(context.theme.primaryColor).make(),
        "Trending Products".text.color(context.theme.focusColor).xl2.make(),
      ],
    );
  }
}
