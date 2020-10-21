import 'package:flutter/material.dart';

class JobDetails extends StatefulWidget {
  @override
  _JobDetailsState createState() {
    return new _JobDetailsState();
  }
}

class _JobDetailsState extends State<JobDetails> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Job Detail"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            color: Colors.white,
            child: _buildImageTopRow(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            color: Colors.white,
            child: Center(
                child:_buildDetailColumn()
            ),
          ),
          _midButtons(),

          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Job Status", style: TextStyle(color:  Colors.grey),),
                Stepper(
                  steps: _processSteps(),
                  currentStep: this._currentStep,
                  onStepTapped: (step){
                    setState(() {
                      this._currentStep= step;
                    });
                  },
                  onStepContinue: (){
                    setState(() {
                      if(_currentStep < _processSteps().length -1){
                        _currentStep++;
                      }else{
                        print("Completed");
                      }
                    });
                  },

                  onStepCancel: (){
                    setState(() {
                      if(_currentStep > 0){
                        _currentStep--;
                      }else{
                        _currentStep = 0;
                      }
                    });
                  },
                ),
              ],
            ),

          )

        ],
      ),
    );
  }

  _buildImageTopRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 75,
              width: 75.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage("assets/person.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Alizam Smith",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  " | Plumber",
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                )
              ],
            ),

            SizedBox(
              height: 15.0,
            ),
          ],
        ),
        Icon(
          Icons.message,
          color: Colors.deepPurple,
        ),
      ],
    );


  }

  _buildDetailColumn() {
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Job Task",
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
            Text(
              "Tab. Wash Basin and sink Problem",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            )
          ],
        ),

        SizedBox(
          height: 15.0,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Booking for ",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                Text(
                  "20th jan, 09:00-11:00",
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                )
              ],
            ),

            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Job Fees",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                Text(
                  "\$200/ hr",
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                )
              ],
            ),
          ],
        ),

        SizedBox(
          height: 15.0,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Address",
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
            Container(width: 180.0,
              child: Text(
                "Home, 140 Shraddha Apartment Ashirwad Society, her ICICI bank, Vadodarta. Landmark:",
                style: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            )

          ],
        )
      ],
    );
  }

  _midButtons(){
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.close, color: Colors.grey, size: 20.0,),
                SizedBox(width: 15.0,),
                Text("Cancel", style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.refresh, color: Colors.grey, size: 20.0,),
                SizedBox(width: 15.0,),
                Text("Reschedule", style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person, color: Colors.grey, size: 20.0,),
                SizedBox(width: 15.0,),
                Text("View Profile", style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
        )
      ],
    );
  }

  List<Step> _processSteps(){
     List<Step> _steps =[
      Step(
        title: Text("Booking Accepted"),
        content: Text("Job accepted on 19th jan",style: TextStyle(color: Colors.grey, fontSize: 10.0),),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text("Job in Process"),
        content: Text("Job accepted on 19th jan",style: TextStyle(color: Colors.grey, fontSize: 10.0),),
        isActive: _currentStep >= 1,
      ),

      Step(
        title: Text("Job Finished"),
        content: Text("Job accepted on 19th jan",style: TextStyle(color: Colors.grey, fontSize: 10.0),),
        isActive: _currentStep >= 2,
      ),

     ];

     return _steps;
  }
}

