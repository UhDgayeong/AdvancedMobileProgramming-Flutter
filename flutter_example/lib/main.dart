import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView Demo',
        home: Scaffold(
          appBar: AppBar(title: const Text('ListView Exmaple')), body:StartPage()
        )
    );
  }
}

void main() => runApp(MyApp());


Widget _tile(
BuildContext context,
String title,
String subtitle,
IconData icon,
){
  return ListTile(
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
    subtitle: Text(subtitle),
    leading: Icon(icon, color: Colors.blue.shade500),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage(title, subtitle)));
    }
  );
}

class StartPage extends StatelessWidget {
  Widget _buildList(BuildContext context) {
    return ListView(
      children: [
        _tile(context, 'CGV', '3117 16th St', Icons.theaters),
        _tile(context, 'MegaBox', '501 Buckingham Way', Icons.theaters),
        _tile(context, 'LotteCinema', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile(context, 'SushiSushi', '757 Monterey Blvd', Icons.restaurant),
        _tile(context, 'PastaPasta', '291 30th St', Icons.restaurant),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
}

class SubPage extends StatelessWidget {
  String title;
  String subtitle;

  SubPage(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: Text(subtitle));
  }
}