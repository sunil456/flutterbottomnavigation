import 'package:flutter/material.dart';
import 'package:flutterbottomnavigation/new_page.dart';

import 'my_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  int currentStep =0;

  // This is just for Stepper with multiple steps
  List<Step> steps = [
    Step(
      title: new Text('New Account'),
      isActive: true,
      state: StepState.complete,
      content: new Column(
        children: <Widget>[

          new TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),

          new TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),

        ],

      )
    ),
    
    Step(
      isActive: false,
      state: StepState.editing,
      title: new Text("Address"),

      content: new Column(
        children: <Widget>[

          new TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),

          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),

        ],
      )
    ),
    Step(
      state: StepState.error,
      title: const Text('Avatar'),
      subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ];

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = new TabController(
      length: 2,
      vsync: this
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Bottom Navigation"),
      ),

      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new NewPage("New Page"),
          new NewPage("Second Page")
        ],
      ),

      bottomNavigationBar: new Material(
        child: new TabBar(
          controller: tabController,
          tabs: <Widget>[

            new Tab(
              icon: new Icon(Icons.favorite),
            ),

            new Tab(
              icon: new Icon(Icons.close),
            )
          ],
        ),
      ),


//      body: new Container(
//
//        child: new Stepper(
//          steps: steps,
//          currentStep: this.currentStep,
//          type: StepperType.vertical,
//        ),
//
//      ),


//      body: new MyBody()
    );
  }
}

