import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 70,
            collapsedHeight: 90,
            //collapsedHeight: 100,
            backgroundColor: Colors.transparent,
            expandedHeight: 300,
            floating: true,
            pinned: true,
            // AppBar will get scrolled.
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Be the change you want to see in the world",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
                child: Image.network("https://images.unsplash.com/photo-1532629345422-7515f3d16bb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",fit: BoxFit.fill,),
              ),
              titlePadding: EdgeInsets.fromLTRB(80, 0, 0, 35),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "Kuch achaa likh de yaha",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "Amount",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color(0xff01A0C7),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            onPressed: () {},
                            child: Text("Donate Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 1
            ),
          ),
        ],
      ),
    );
  }
}
