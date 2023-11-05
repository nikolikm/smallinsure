import 'package:flutter/material.dart';
import '../../screens/Claims/sub_form.dart';

class CoveragePage extends StatelessWidget{
  const CoveragePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Small Insure")
      ),
      body: CoverageWidget(),
    );
  }
}

enum SingingCharacter { noPlan, P }

const List<String> list = <String>['Issue A', 'Issue B',
  'Issue C', 'Issue D'];


class CoverageWidget extends StatefulWidget {
  final TextEditingController iconController = TextEditingController();
  PlanLabel? selectedPlan;

  @override
  State<CoverageWidget> createState() => _CoverageState();
}

class _CoverageState extends State<CoverageWidget> {
  SingingCharacter? _character = SingingCharacter.noPlan;
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5),
              child: DropdownMenu<String>(
                  width: 380,
                  label: const Text("Select From Common Issues"),
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(value: value, label: value);
                  },
                  ).toList(),
                ),
              ),
              Card( // Coverage card
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("Covered by what user plans:"),
                      subtitle: Text("- Example detail 1\n- Example detail 2\n"
                        "- Example detail 3\n- Example detail 4\n"
                        "- Example detail 5\n- Example detail 6"),
                    )
                  ],
                )
              ),
              Card( // Coverage card
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Expected Insurance Response:"),
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
                        title: Text("Summary:"),
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
                        title: Text("What user can do next:"),
                        subtitle: Text("- Example detail 1\n- Example detail 2"),
                      )
                    ],
                  )
              ),
              Card( // Estimated Cost With Specific BOP
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Estimated Cost:"),
                        subtitle: Text("\$\$"),
                      )
                    ],
                  )
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const SubForm(title: 'SecondPage');
                        }));
                      },
                      child: Text(
                        "Make a Claim",
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
        ),
      ),
    );
  }
}

enum PlanLabel {
  PlanA('PlanA'),
  PlanB('PlanB'),
  PlanC('PlanC'),
  PlanD('PlanD');

  const PlanLabel(this.label);
  final String label;
}