import 'package:flutter/material.dart';

class SubForm extends StatelessWidget{
  const SubForm({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("File a Claim")
      ),
      body: const SubFormExample(),
    );
  }
}

class SubFormExample extends StatefulWidget {
  const SubFormExample({super.key});

  @override
  State<SubFormExample> createState() => _SubFormState();
}

class _SubFormState extends State<SubFormExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Policy Information", style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text("Name:", textAlign: TextAlign.left,),
                )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Social Security:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Date of Birth", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),

                //Second part/////////////////////////

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Claimant Information", style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Policy Number:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Relationship to the insured:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Occupation:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                ///////////////////////third part
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Incident Details", style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Date of incident:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Location of incident:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Description of what happened: ", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                ////////////////forth

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Property Details", style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Description of damaged or lost property:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Estimated value of the property: ", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Purchase price:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                ///////////////five
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Injury Details", style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Description of the injury or damage: ", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Medical records and bills(if applicable): ", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                /////////////////sixth

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Align(alignment: Alignment.center,
                      child: Text("Business Impact", style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0 ),)),
                ),

                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Financial impact of the incident on the business:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Lost income or revenue due to the incident: ", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text("Additional expenses:", textAlign: TextAlign.left,),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: MaterialButton(
                        color: Color.fromARGB(255, 219, 22, 22),
                        minWidth: 400,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        onPressed: (){
                          Navigator.popUntil(context, ModalRoute.withName('/'));
                        },
                        child: Text(
                          "Continue",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          )
                          ,),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )

        )
    );
  }
}