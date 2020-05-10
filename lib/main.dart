import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudoku Solver',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controllers = <TextEditingController>[];
  @override
  void initState() {
    for (int i = 0; i < 81; i++) {
      controllers.add(TextEditingController(text: ''));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sudoku Solver'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 192, 203, 3),
                    Color.fromRGBO(128, 0, 128, 3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              child: ListView(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 9),
                      itemBuilder: (_, ind) => Card(
                        child: TextFormField(
                          //initialValue: controllers[ind].text,
                          controller: controllers[ind],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(),
                        ),
                      ),
                      itemCount: 81,
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow),
                    label: Text('Solve!'),
                  ),
                ],
              ),
            ),
            /*RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_arrow),
              label: Text('Solve!'),
              color: Colors.white,
            ),*/
          ],
        ),
      ),
    );
  }
}
