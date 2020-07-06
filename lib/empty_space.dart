import 'package:flutter/cupertino.dart';

class EmptySpace extends StatelessWidget {
  const EmptySpace(
      {this.multiple = 1, this.horizontal = false, this.both = false});
  final multiple;
  final bool horizontal;
  final bool both;

  const EmptySpace.v2({multiple = 2}) : this(multiple: multiple);

  const EmptySpace.v3({multiple = 3}) : this(multiple: multiple);

  const EmptySpace.v4({multiple = 4}) : this(multiple: multiple);

  const EmptySpace.horizontal({multiple = 1})
      : this(multiple: multiple, horizontal: true);

  const EmptySpace.h2({multiple = 2})
      : this(multiple: multiple, horizontal: true);

  const EmptySpace.h3({multiple = 3})
      : this(multiple: multiple, horizontal: true);

  const EmptySpace.h4({multiple = 4})
      : this(multiple: multiple, horizontal: true);

  const EmptySpace.all({multiple = 1}) : this(multiple: multiple, both: true);

  const EmptySpace.a2({multiple = 2}) : this(multiple: multiple, both: true);

  const EmptySpace.a3({multiple = 3}) : this(multiple: multiple, both: true);

  const EmptySpace.a4({multiple = 4}) : this(multiple: multiple, both: true);

  @override
  Widget build(BuildContext context) {
    final double size = 8.0 * multiple;
    if (both) {
      return SizedBox(
        height: size,
        width: size,
      );
    }

    return SizedBox(
      height: horizontal ? 0 : size,
      width: horizontal ? size : 0,
    );
  }
}
