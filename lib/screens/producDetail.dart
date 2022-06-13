// ignore_for_file: file_names

import 'dart:developer';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';

class ProductDetail extends StatefulWidget {
  // const ProductDetail({ Key? key }) : super(key: key);
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String? productImage;

  int? productPrice;

  String? pdtStarRate;

  String? productDesc;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void _decrementCounter() {
    if (_counter != 0)

    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 40,
          elevation: 0,
          leading: CircleAvatar(
            backgroundColor:deepgreen,
            child: IconButton(
              onPressed: (){},
            icon: Icon(Icons.arrow_back_ios_new_rounded,
            color: white,)
            )
            ),
          
        ),
        body: ListView(
          children: [Container(
            child: Column(
              children:[
                Container(
                  height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://i5.walmartimages.com/asr/363f940d-e4ae-4d1d-9d29-c20156fbb88f_1.887788dec406c4b1ff7192f7326f0289.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF",
                    ))
            
                )
                    ),
                    // SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("Aleo Vera Gel",
                              style: TextStyle(
                                color: deepgreen,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              subtitle: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical:8.0),
                                    child: Text("GHC 62.99", style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                  Icon(Icons.star,
                                  color: Colors.yellow,)
                                ],
                              ),
                              trailing: Container(
                                decoration: BoxDecoration(
                                  color: deepgreen,
                          borderRadius: BorderRadius.circular(20)
                        ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(onPressed: _decrementCounter, child: Text("-",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),)),
                                    Text("$_counter", style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                    TextButton(onPressed: _incrementCounter, child: Text("+",
                                     style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),))
                                  ],
                                ),
                              ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text("About",
                                style: TextStyle(
                                  color: deepgreen,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                              Text("The bioactive compounds from Alea vera are claimed to be very effective in treatment of various ailments, such as burn, allergic reactions, rheumatoid arthritis, rheumatic fever acid indigestion, ulcers, diabetes, skiin diseases, dysentery, diarrhea, piles and inflammatory conditions of the digestive system and other...",
                              style: TextStyle(
                                color: deepgreen,
                                fontSize: 18,)
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                              Row(
                              
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.verified,
                                      size: 50,
                                      color: deepgreen,),
                                      Column(
                                        children: [
                                          Text("Verified by \n our expert \n team",
                                          style: TextStyle(color: deepgreen)),
                                        ],
                                      ) 
                                    ],
                                  ),
                                   Row(
                                    children: [
                                      Icon(Icons.verified_user,
                                       size: 50,
                                      color: deepgreen,),
                                      Text("Return if not \n product \n ordered",
                                      style: TextStyle(color: deepgreen)) 
                                    ],
                                  ),
                                   Expanded(
                                     child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.delivery_dining_rounded,
                                         size: 50,
                                        color: deepgreen,),
                                        Text("Delivery in \n 4 working \n days",softWrap: true,
                                        style: TextStyle(color: deepgreen)) 
                                      ],
                                                                     ),
                                   )
                                ],
                              ),
                          ],
                        ),
                        
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                      focusColor: Colors.blue,
                      onTap: () {},
                      child: Container(
                        width: 400,
                        height: 40,
                        decoration: BoxDecoration(
                          color: deepgreen,
                          borderRadius: BorderRadius.circular(40),
                          ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.credit_card,
                            color: Colors.white),
                            SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                            Text("Buy Now",
                            style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                          ],
                        )
                      ),
                    )
              ] 
            ),
          ),
          ]
        )
        
      ),
    );
  }
}