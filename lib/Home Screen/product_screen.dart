import 'package:flutter/material.dart';

class productScreen extends StatefulWidget {
  const productScreen({Key? key}) : super(key: key);

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Icon(Icons.arrow_back)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset("assets/images/mobile1.jpg"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mobiles",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Text(
                      "The Samsung Galaxy S23 is a series of high-end Android-based\nsmartphones designed,developed,manufactured,\n and marketed by Samsung Electronicsas part of its flagship Galaxy S series.\nThe phones were announced on 1 February 2023\nUnpacked and was released on 17 February 2023",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Quanitity",style: TextStyle(color: Colors.black,fontSize: 20),),
              ],
            ),
            SizedBox(height: 20,),
            Container(height: 50,width: 50,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(200)),child: InkWell(
                onTap: () {
                  setState(() {
                    a++;
                  });
                },child: Icon(Icons.add,color: Colors.white)),),
            SizedBox(height: 15,),
            Container(height: 50,width: 50,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(200)),child: InkWell(
                onTap: () {
                  setState(() {
                    a--;
                  });
                },child: Icon(Icons.minimize,color: Colors.white)),),
            Text("$a",style: TextStyle(color: Colors.blue,fontSize: 25,),
            ),
            Text("${a * 124999}Price",style: TextStyle(color: Colors.blue,fontSize: 25,),
            ),
          ],
        ),
      ),
    );
  }
}
