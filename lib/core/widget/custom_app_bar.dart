import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? voidCallback;

  const CustomAppBar({Key? key, @required this.title, this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "Sem título",
        style: TextStyle(fontFamily: "KoHo"),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          menu,
          color: Colors.white,
        ),
        onPressed: voidCallback ?? null,
      ),
    );
  }

  @override
  Size get preferredSize => Size(20, 50);
}

const IconData menu = IconData(0xe901, fontFamily: "CustomFont");
