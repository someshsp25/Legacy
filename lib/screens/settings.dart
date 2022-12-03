import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/view_models/theme/theme_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          "Settings",
          style: TextStyle(),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[ ListTile(
              title: Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text("Use the dark mode"),
              trailing: Consumer<ThemeProvider>(
                builder: (context, notifier, child) => CupertinoSwitch(
                  onChanged: (val) {
                    notifier.toggleTheme();
                  },
                  value: notifier.dark,
                  activeColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            ListTile(
              
                title: Text(
                  "About us ",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                subtitle: Text(
                  "about the club..................",
                ),
                
                
                trailing: Icon(Icons.error)
                
                ),
        
                Divider(),
            ListTile(
              
                title: Text(
                  "About the developer",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                subtitle: Text(
                  "developed by aayush solanki",
                  
                ),
                
                
                
                trailing: Icon(Icons.error)
                
                ),
                Padding(
        padding: const EdgeInsets.fromLTRB(10,1,0,0),
                child: InkWell(
  onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/aayush-solanki-/')),
  child: Text(
    '  Connect with me',
    style: TextStyle(color: Colors.blue),
  ),
)
                ),
                
            Divider(),
           
          ],
        ),
      ),
    );
  }
}
