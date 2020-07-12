import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {

  ClientPage({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $username", style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/LoginPage');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  height: 129,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: MediaQuery.of(context).size.width-20,
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          Text("Client Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 0.07
                            ),),
                          Spacer(),
                          Text("#43",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("No of Items: 13",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.07
                            ),),
                          Spacer(),
                          Text("COD",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                letterSpacing: 0.07
                            ),),

                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rs.250",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.06
                            ),),
                          Spacer(),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              height: 33,
                              width: 87,
                              decoration: BoxDecoration(
                                color: Color(0xff209625),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text('View',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.07
                                  ),),
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ),
      ),
    );
  }
}
