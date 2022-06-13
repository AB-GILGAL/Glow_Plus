import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';

class ExpertProfile extends StatelessWidget {
  const ExpertProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: deepgreen,
        toolbarHeight: 40,
        elevation: 0,
        leading: CircleAvatar(
            backgroundColor: white,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: deepgreen,
                ))),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            decoration: BoxDecoration(
              color: deepgreen,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),
            
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                      
                      image: DecorationImage(
                          alignment: Alignment.topRight,
                          fit: BoxFit.contain,
                          image: NetworkImage(
                              "https://image.shutterstock.com/image-vector/first-aid-kit-vector-icon-260nw-185823017.jpg"),
                     
                      )
                  ),
                ),
                  
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                           "We are happy to connect you to",
                         style: TextStyle(
                           color: white,
                           fontSize: 15,
                           fontWeight: FontWeight.w800
                         ),
                         ),
                      ),
                       Align(
                         alignment: Alignment.bottomLeft,
                         child: Text(
                           "our verified high profile Dermatologists",
                         style: TextStyle(
                           color: white,
                           fontSize: 15,
                           fontWeight: FontWeight.w800
                         ),
                         ),
                       ),
                       Align(
                         alignment: Alignment.bottomLeft,
                         child: Text(
                           "in your region",
                         style: TextStyle(
                           color: white,
                           fontSize: 15,
                           fontWeight: FontWeight.w800
                         ),
                         ),
                       ),
                    ],
                  ),
                ),
              ],
            ),
            
          ),
           SizedBox(height: MediaQuery.of(context).size.height*0.05),
         
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                        style: TextStyle(
                          color: deepgreen
                          ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: deepgreen),
                          hintText: ("Search Region"),
                           prefixIcon: Icon(Icons.location_on,
                          color: deepgreen
                          ),
                          suffixIcon: Icon(Icons.search,
                          color: deepgreen,
                          ),
                          filled: true,
                          fillColor: light
              )
                        ),
            ),
            
         Expanded(
           child: ListView.separated(itemBuilder: (context,index)=>ExpertAddressCard(
         
           ),
           itemCount: 30,
           separatorBuilder: (context, index) => SizedBox(height: 5,),
           ),
         )

        ],
      ),
    );
  }
}

class ExpertAddressCard extends StatelessWidget {
  const ExpertAddressCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: light,
            child: 
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        tileColor: light,
                        title: Text("Dr. Edward Carty-Amoah",
                        style: TextStyle(color: deepgreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w900)
                        ),
                        subtitle: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [Row(
                          children: [Icon(Icons.phone,
                          color: deepgreen,
                          size: 15,),
                            Text("+233547654398",
                           style: TextStyle(color: deepgreen,
                        fontSize: 12,
                        ),),
                          ],
                        ),
                         Row(
                          children: [Icon(Icons.location_on,
                          color: deepgreen,
                          size: 15,),
                            Text("Cape Coast Teaching Hospital",
                           style: TextStyle(color: deepgreen,
                        fontSize: 12,
                        ),),
                          ],
                        ),
                          ]
                          ),
                        
                            ),
                    ),
                          CircleAvatar(
                          radius: 35,
                          foregroundImage: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/christian-celebrities-chris-pratt-1558148829.jpg?crop=0.8201863640557248xw:1xh;center,top&resize=480:*"),
                          )
              ],
            ),
          ),
        ),
         SizedBox(width: 70,)
      ],
    );
  }
}
