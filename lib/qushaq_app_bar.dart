import 'package:flutter/material.dart';

class QushaqAppBar extends StatelessWidget with PreferredSizeWidget {
  bool? backButton;
  bool? burger;

  QushaqAppBar({Key? key, this.backButton, this.burger}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/qushaq_logo.png',
        width: 40,
        height: 45,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: backButton ?? false
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded,
                  color: Color(0xff8F99D6), size: 36.0))
          : null,
      actions: burger ?? false
          ? [
              Container(
                child: IconButton(
                    onPressed: () {
                      print('icon1');
                    },
                    icon: const Icon(Icons.menu)),
              ),
            ]
          : null,
      actionsIconTheme:
          const IconThemeData(color: Color(0xff8F99D6), size: 36.0),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
