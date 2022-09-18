import 'package:advancedui/provider_ex/them_provider_ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

class ShowThem extends StatefulWidget {
  const ShowThem({Key? key}) : super(key: key);

  @override
  State<ShowThem> createState() => _ShowThemState();
}

class _ShowThemState extends State<ShowThem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("my Theme"),
        actions: [
          IconButton(
            icon: Icon(Icons.colorize),
            onPressed: () => _showColorPicker(context),
          ),
        ],

      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ThemProviderEX>(
            builder: (context, themeProvider, child) => Text(
              'Text',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                color: themeProvider.mainColor,
              ),
            ),
          ),
          SizedBox(

            height: 30,
          ),

          Consumer<ThemProviderEX>(
            builder: (context, themeProvider, child) => Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
             style:  TextStyle(
               color: themeProvider.mainColor
             ),
            ),
          ),

        ],
      ),
    );
  }
  void _showColorPicker(BuildContext context) {
    ThemProviderEX themeProvider =
    Provider.of<ThemProviderEX>(context, listen: false);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        content: Wrap(
          children: [
            ColorPicker(
              pickerColor: themeProvider.mainColor,
              onColorChanged: (color) => themeProvider.changeThemeColor(color),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          )
        ],
      ),
    );
  }

}
