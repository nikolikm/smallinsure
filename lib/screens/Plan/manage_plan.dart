import 'package:flutter/material.dart';
import 'package:smallinsure/screens/Plan/OM_plan.dart';

class ManagePlan extends StatelessWidget{
  const ManagePlan(String this.plan, {Key? key, required this.title}) : super(key: key);
  final String title;
  final String plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Manage Plan")
      ),
      body: ManagePlanWidget(plan),
    );
  }
}

class ManagePlanWidget extends StatefulWidget {
  const ManagePlanWidget(String this.plan, {super.key});
  final String plan;

  @override
  State<ManagePlanWidget> createState() => _ManagePlanState(plan);
}

class _ManagePlanState extends State<ManagePlanWidget> {
  _ManagePlanState(String this.plan);
  final String plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card( // Policy name card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("Current Plan:"),
                  subtitle: Text(plan),
                )
              ],
            )
          ),
          Card( // Coverage card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text("Coverage by Policy:"),
                    subtitle: Text("- Example detail 1\n- Example detail 2\n"
                                   "- Example detail 3\n- Example detail 4\n"
                                   "- Example detail 5\n- Example detail 6"),
                  )
                ],
              )
          ),
          Card( // Related coverage card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text("Related Additional Coverages:"),
                    subtitle: Text("- Example coverage 1\n- Example coverage 2\n"
                        "- Example coverage 3\n- Example coverage 4\n"
                        "- Example coverage 5\n- Example coverage 6"),
                  )
                ],
              )
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                color: Color.fromARGB(255, 219, 22, 22),
                minWidth: 400,
                padding: EdgeInsets.only(left: 20, right: 20),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OMPlan(title: 'SecondPage');
                  }));
                },
                child: Text(
                  "Change Plan",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  )
                  ,),
              ),
            ),
          ),
        ],
      )
    );
  }
}