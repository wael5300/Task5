import 'package:flutter/material.dart';

class FirsTpage extends StatelessWidget {
  const FirsTpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NextPage());
  }
}

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Blog", textDirection: TextDirection.ltr),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "http://cdn.arstechnica.net/wp-content/uploads/2016/02/5718897981_10faa45ac3_b-640x624.jpg"),
                            ),
                          ),
                          CircleAvatar(
                            radius: 11,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                          Text(
                            "wael",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(22)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1529397938791-2aba4681454f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              const Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 18,

                                ),
                              ),
                              IconButton(onPressed: () {
                                
                              }, icon: Icon(Icons.edit,color: Colors.white,),),

                              IconButton(onPressed: () {

                              }, icon: Icon(Icons.delete,color: Colors.red,),),
                            ],
                          ),

                        ),
                        SizedBox(height: 10,  ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: const Text(
                            "Content",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16,

                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                      ]),
                );
              },
            ),
          ),
        ],),);
  }
}
