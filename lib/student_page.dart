import 'package:flutter/material.dart';

import 'about_page.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  List ProductList=[
    {'name':'Uzzal','ico':Icons.call,'img':'im/a.jpg'},
    {'name':'Kumar','ico':Icons.email,'img':'im/aaaa.jpg'},
    {'name':'Biswas','ico':Icons.facebook,'img':'im/aaaaa.jpg'},
    {'name':'Rahim','ico':Icons.call,'img':'im/aaaaaa.jpg'},
    {'name':'Watch','ico':Icons.email,'img':'im/b.jpg'},
    {'name':'Karim','ico':Icons.call,'img':'im/bb.jpg'},
    {'name':'Ram','ico':Icons.facebook,'img':'im/bbb.jpg'},
    {'name':'Ram','ico':Icons.facebook,'img':'im/bbb.jpg'},
    {'name':'Ram','ico':Icons.facebook,'img':'im/bbb.jpg'},
    {'name':'Ram','ico':Icons.facebook,'img':'im/bbb.jpg'},

  ];

  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
      slivers: [

        SliverAppBar(
          leading: Icon(Icons.back_hand),
          title: Text("Easy Shopping"),
          pinned: true,
          expandedHeight:250,
          floating: false,
          backgroundColor: Colors.yellow,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Image.network("https://th.bing.com/th/id/OIP.6pWuAfltHXgbXTj3crcqQQHaEK?w=326&h=183&c=7&r=0&o=5&dpr=1.25&pid=1.7",
              fit: BoxFit.fill,
              width: double.infinity,),
          ),
        ),
         SliverToBoxAdapter(
           child: ListView.builder(
               itemCount: ProductList.length,
               shrinkWrap: true,
               primary: false,

               padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
               itemBuilder:(context, index){
                 return Container(
                 //  padding: EdgeInsets.all(100),
                  color: Colors.blue,
                   height: 120,
                   child: Card(
                     margin: EdgeInsets.all(20),
                  //   color: Colors.yellow,
                     child: ListTile(
                      onLongPress: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context) => AboutPage()));
                      },
                       title: Text(ProductList[index]['name']),
                       leading: CircleAvatar(
                         backgroundColor: Colors.lightGreenAccent,
                         backgroundImage: AssetImage(ProductList[index]['img']),
                       ),
                       trailing: Icon(ProductList[index]['ico']),

                     ),
                   ),
                 );
               }),
         )
      ],
    );
  }
}
