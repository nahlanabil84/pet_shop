import 'package:flutter/material.dart';

class TransparentAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const TransparentAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}