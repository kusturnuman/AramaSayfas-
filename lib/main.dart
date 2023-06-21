import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  const Home({Key? key}): super(key: key);

  Widget _favoriler(@required String image,@required String name){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))
            ),
          ),
          SizedBox(height: 10,),
          Text(name,style: TextStyle(fontSize: 17),),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.backspace, color: Colors.black,),
      ),
      body: Container(
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),)),
          child: ListView(
            children: [
             Container(
               padding: EdgeInsets.symmetric(
                 horizontal: 20,
                 vertical: 20,
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Text(
                      "Favoriler",
                      style: TextStyle(fontSize: 20,color: Colors.black),
                    ),
                   TextField(
                     onChanged: (value){

                     },
                     decoration: InputDecoration(
                         labelText: "Aramak İçin Dokun",
                         hintText: "Favoriler",
                         prefixIcon: Icon(Icons.search),
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         )
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(
                       top: 5,

                     ),
                     child: Container(
                       height: 290,
                       child: GridView.count(
                         crossAxisCount: 2,
                         crossAxisSpacing: 12,
                         mainAxisSpacing: 8,
                         childAspectRatio: 1.30,
                         children: [
                           _favoriler('assets/images/Efes.jpg', "Efes Antik Kenti"),
                           _favoriler('assets/images/Xantos.jpg', "Xantos Antik Kenti"),
                           _favoriler('assets/images/Efes.jpg', "Efes Antik Kenti"),
                           _favoriler('assets/images/Xantos.jpg', "Xantos Antik Kenti"),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yeni İnsanlar Keşfedin",
                      style: TextStyle(fontSize: 20,color: Colors.black),
                    ),
                    TextField(
                      onChanged: (value){
                        
                      },
                      decoration: InputDecoration(
                        labelText: "Aramak İçin Dokun",
                        hintText: "Yeni İnsanlar Keşfet",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Container(
                        height: 300,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.30,
                          children: [
                            _favoriler('assets/images/Efes.jpg', "Efes Antik Kenti"),
                            _favoriler('assets/images/Xantos.jpg', "Xantos Antik Kenti"),
                            _favoriler('assets/images/Efes.jpg', "Efes Antik Kenti"),
                            _favoriler('assets/images/Xantos.jpg', "Xantos Antik Kenti"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}