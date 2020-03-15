import 'package:flutter/material.dart';
import 'package:opendota/api/opendota_client.dart';
import 'package:opendota/model/player_match.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenDota Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayerPage(),
    );
  }
}

class PlayerPage extends StatefulWidget {
  PlayerPage({Key key}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  List<PlayerMatch> _matches;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OpenDota Player'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _createList(_matches),
          ),
        ]
      ),
    );
  }
  
  @override
  void initState() {
    super.initState();
    OpenDotaClient.getPlayerMatch(89473353).then((result) {
      setState(() {
        _matches = result;
      });
    });
  }

  ListView _createList(List<PlayerMatch> matches) {
    if(matches == null)
      return ListView();
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var match = matches[index];
        var d = match.duration;
        return Row(
          children: [
            Text(match.matchID.toString()),
            Text(match.heroID.toString()),
            Text(match.gameMode.toString()),
            Text('${d~/60}:${d%60}'),
            Text(match.kills.toString()),
            Text(match.deaths.toString()),
            Text(match.assists.toString()),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: matches.length,
    );
  }
}
