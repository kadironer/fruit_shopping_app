import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF1E1E1E),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu,size: 30.0,color: Colors.white,),
                  tooltip: "Menu",
                  onPressed: (){

                  },
                ),
                Row(
                  children: [
                    IconButton(
                      icon:Icon(Icons.shopping_bag_outlined,color: Colors.white),
                      tooltip: "Cart",
                      onPressed: (){
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.transparent,
                          child: Image.asset("images/kadirProfile.jpg",fit: BoxFit.fill,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0,left: 20.0,right: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: Image.asset("images/campaigns.png",fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text("Fruits")
            ],
          ),
        ],
      ),
    );
  }
}
