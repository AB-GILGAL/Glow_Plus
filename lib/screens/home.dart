import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        elevation: 0,
        leading: CircleAvatar(
            minRadius: 2,
            backgroundColor: deepgreen,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: white,
                ))),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    color: light,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "http://cdn.shopify.com/s/files/1/0466/5737/2315/products/AMP-12ATP-Green_1200x1200.jpg?v=1598339070"))),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Go to store now!",
                      style: TextStyle(
                          color: deepgreen,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: deepgreen,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: white,
                            ))),
                  ],
                )),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          InkWell(
            onTap: () {
             
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  color: light,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://threebestrated.ca/images/DrRonLow-Lethbridge-AB.jpeg"))),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        Text(
                          "Got any skin issues?",
                          style: TextStyle(
                              color: deepgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Get help here",
                          style: TextStyle(
                              color: deepgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: CircleAvatar(
                        radius: 18,
                        backgroundColor: deepgreen,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: white,
                            ))),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
