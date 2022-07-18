import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawerlist extends StatelessWidget {
  final Icon icon;
  final String name;
  // final Color color;
  drawerlist(
    this.icon,
    this.name,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text('$name'),
    );
  }
}
