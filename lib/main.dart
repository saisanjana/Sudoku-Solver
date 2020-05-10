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

  var nums = [];
  @override
  void initState() {
    for (int i = 0; i < 81; i++) {
      controllers.add(TextEditingController(text: ''));
      nums.add(0);
    }
    super.initState();
  }

  void set1(int ind, String k) {
    if(k==''){
      nums[ind]=0;
    }else{
      nums[ind]=int.parse(k);
    }
  }

  bool isSafe(int ind, int k) {
    int jd = ind + 9;
    while (jd <= 80) {
      if (jd != ind && nums[jd] == k) {
        return false;
      }
      jd = jd + 9;
    }
    int ju = ind - 9;
    while (ju >= 0) {
      if (ju != ind && nums[ju] == k) {
        return false;
      }
      ju = ju - 9;
    }
    if (ind >= 0 && ind <= 8) {
      for (int i = 0; i <= 8; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 9 && ind <= 17) {
      for (int i = 9; i <= 17; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 18 && ind <= 26) {
      for (int i = 18; i <= 26; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 27 && ind <= 35) {
      for (int i = 27; i <= 35; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 36 && ind <= 44) {
      for (int i = 36; i <= 44; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 45 && ind <= 53) {
      for (int i = 45; i <= 53; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 54 && ind <= 62) {
      for (int i = 54; i <= 62; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else if (ind >= 63 && ind <= 71) {
      for (int i = 63; i <= 71; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    } else {
      for (int i = 72; i <= 80; i++) {
        if (i != ind && nums[i] == k) {
          return false;
        }
      }
    }

    if ((ind >= 0 && ind <= 2) ||
        (ind >= 9 && ind <= 11) ||
        (ind >= 18 && ind <= 20)) {
      int t = 0;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 3 && ind <= 5) ||
        (ind >= 12 && ind <= 14) ||
        (ind >= 21 && ind <= 23)) {
      int t = 3;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 6 && ind <= 8) ||
        (ind >= 15 && ind <= 17) ||
        (ind >= 24 && ind <= 26)) {
      int t = 6;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 27 && ind <= 29) ||
        (ind >= 36 && ind <= 38) ||
        (ind >= 45 && ind <= 47)) {
      int t = 27;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 30 && ind <= 32) ||
        (ind >= 39 && ind <= 41) ||
        (ind >= 48 && ind <= 50)) {
      int t = 30;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 33 && ind <= 35) ||
        (ind >= 42 && ind <= 44) ||
        (ind >= 51 && ind <= 53)) {
      int t = 33;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 54 && ind <= 56) ||
        (ind >= 63 && ind <= 65) ||
        (ind >= 72 && ind <= 74)) {
      int t = 54;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else if ((ind >= 57 && ind <= 59) ||
        (ind >= 66 && ind <= 68) ||
        (ind >= 75 && ind <= 77)) {
      int t = 57;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    } else {
      int t = 60;
      for (int i = 0; i < 3; i++) {
        for (int j = t; j < t + 3; j++) {
          if (j != ind && nums[j] == k) {
            return false;
          }
        }
        t = t + 9;
      }
    }

    return true;
  }

  bool solve(int ind) {
    print(ind);
    if(ind==81){
      return true;
    }
    if(nums[ind]!=0){
      if(solve(ind+1)){
        return true;
      }else{
        return false;
      }
    }
    for(int i=1;i<=9;i++){
      if(isSafe(ind,i)){
        setState(() {
          nums[ind]=i;
          controllers[ind].text=nums[ind].toString();
        });
        if(solve(ind+1)){
          return true;
        }else{
          setState(() {
            nums[ind]=0;
            controllers[ind].text='';
          });
          return false;
        }
      }
    }
    return false;
  }
  void reset() {
    //print(nums);
    setState(() {
      for (int i = 0; i < 81; i++) {
        controllers[i].text = '';
        nums[i] = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sudoku Solver'),
      ),
      backgroundColor: Color.alphaBlend(
        Color.fromRGBO(255, 192, 203, 3),
        Color.fromRGBO(128, 0, 128, 3),
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              //color: Colors.blue,
              padding: EdgeInsets.only(
                top: 20,
                left: 5,
                right: 5,
              ),
              height: 400,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 9),
                itemBuilder: (_, ind) => Card(
                  child: TextFormField(
                    //focusNode: focusNode,
                    //initialValue: controllers[ind].text,
                    controller: controllers[ind],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(focusColor: Colors.white),
                    onChanged: (val) => set1(ind, val),
                  ),
                ),
                itemCount: 81,
              ),
            ),
            RaisedButton.icon(
              color: Colors.white,
              onPressed:(){ bool v = solve(0); print(nums);},
              icon: Icon(Icons.play_arrow),
              label: Text('Solve!'),
            ),
            FlatButton.icon(
              onPressed: reset,
              icon: Icon(Icons.restore_page),
              label: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
