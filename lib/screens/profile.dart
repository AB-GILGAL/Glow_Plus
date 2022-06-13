import 'dart:html';
import 'package:flutter/material.dart';
import 'package:glowplus/utils/color.dart';

class Profile extends StatelessWidget {
  // cons Profile({ Key? key }) : super(key: key);

   String? profileImage;
   String? userName;
   String? userEmail;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepgreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor:light,
          child: IconButton(
            onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new_rounded,
          color: deepgreen,)
          )
          ),
        
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),

            child:profileImage==null? 
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 75,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/avata.png"),
                ),
            ):CircleAvatar(
              backgroundColor: Colors.white,
              radius: 75,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(profileImage!),
                ),
            )
            
          ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                userName==null?
                Text("User Name",
                style: TextStyle(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),):Text(userName!,
                style: TextStyle(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                userEmail==null?
                Text("user@email.com",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,),
                ): Text(userEmail!,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,),
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.home,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Home",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
                    
                  ],
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.coffee_rounded,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Promotions",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.shopping_cart,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Order History",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.payment,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Payment",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.person_add,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Invite a Friend",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.help,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Help & Support",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.edit,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Edit Profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                Row(
                  children: [
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.notifications,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                       focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Feeds & Health Tips",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                  children: [
                    InkWell(
                      focusColor: Colors.teal,
                      onTap: () {},
                      child: Icon(Icons.logout_rounded,
                      color: Colors.white,
                      size: 30,
                                      ),
                    ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    InkWell(
                      focusColor: Colors.teal,
                      onTap: () {},
                      child: Text("Log out",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,),
                      ),
                    ),
              ],
            ),
              ],
            ),
            
          )
          
        ],
      ),
      
      );
      
    
  }
}