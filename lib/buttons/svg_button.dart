import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgButton extends StatelessWidget {
  const SvgButton({@override this.assetName, this.onPressed});
  final String assetName;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(child: SvgPicture.asset(assetName), onTap: onPressed);
  }
}
