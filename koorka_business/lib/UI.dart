import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        title: Text('Koorka',style: TextStyle(
          color: Color(0xff6AC17B),
          fontSize: 25,
        ),),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){

        }),
        actions: [
          IconButton(icon: Icon(Icons.power_settings_new), onPressed: (){

          })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 9),
                height: 129,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width-20,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Client Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
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
                    Row(
                      children: [
                        Text("No of Items: 13",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
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
                        Container(
                          height: 33,
                          width: 87,
                          decoration: BoxDecoration(
                            color: Color(0xff209625),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('View',
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.07
                          ),),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}
