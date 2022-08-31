import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfController = TextEditingController();
  var hesap = "";
  var sonuc = "0";
  
  void hesapla(){
    List<String> sayilar = hesap.split("+");
    int geciciSonuc = 0;
    for(var i in sayilar){
      geciciSonuc += int.parse(i);
    }
    setState(() {
      sonuc = geciciSonuc.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var padding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Padding(
        padding: EdgeInsets.only(top:padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(hesap, style: TextStyle(fontSize: 30),),
                  Text(sonuc, style: TextStyle(fontSize: 40),),
                ],
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap = "";
                    });
                  },
                  child: Tus(color: Colors.blueGrey, name: "C",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap = "";
                      sonuc = "0";
                    });
                  },
                  child: Tus(color: Colors.blueGrey, name: "CE",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap = hesap.substring(0, hesap.length - 1);
                    });
                  },
                  child: Tus(color: Color(0xffE37171), name: "⌫",)
                ),
                Tus(color: Colors.blueGrey, name: "/",)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "7";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "7",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "8";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "8",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "9";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "9",)
                ),
                Tus(color: Colors.blueGrey, name: "*",)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "4";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "4",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "5";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "5",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "6";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "6",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "+";
                    });
                  },
                  child: Tus(color: Colors.blueGrey, name: "+",)
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "1";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "1",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "2";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "2",)
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "3";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "3",)
                ),
                Tus(color: Colors.blueGrey, name: "-",)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Tus(color: Colors.blueGrey[300]!, name: ".",),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      hesap += "0";
                    });
                  },
                  child: Tus(color: Colors.blueGrey[300]!, name: "0",)
                ),
                GestureDetector(
                  onTap: (){
                    hesapla();
                  },
                  child: Container(
                    width: width*19/40,
                    height: height/8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff749B76)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("=", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Tus extends StatelessWidget {
  Tus({required this.name, required this.color});

  String name;
  Color color;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      width: width*19/80,
      height: height/8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
