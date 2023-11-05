import 'package:flutter/material.dart';
import './show_plan.dart';

class ShowPlan extends StatelessWidget{
  const ShowPlan({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Small Insure")
      ),
      body: ShowPlanWidget(),
    );
  }
}

enum SingingCharacter { noPlan, P }

const List<String> list = <String>['BOP A', 'BOP B',
  'BOP C', 'BOP D'];


class ShowPlanWidget extends StatefulWidget {
  final TextEditingController iconController = TextEditingController();
  PlanLabel? selectedPlan;

  @override
  State<ShowPlanWidget> createState() => _ShowPlanState();
}

class _ShowPlanState extends State<ShowPlanWidget> {
  SingingCharacter? _character = SingingCharacter.noPlan;
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5),
          child: DropdownMenu<String>(
            width: 380,
            label: const Text("Select BOP"),
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
                  title: Text("Coverage Customization Options:"),
                  subtitle: Column(
                    children: [
                      RadioListTile<SingingCharacter>(
                      title: const Text('Option 1'),
                      value: SingingCharacter.noPlan,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                      RadioListTile<SingingCharacter>(
                        title: const Text('Option 2'),
                        value: SingingCharacter.P,

                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),],
                  ),
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
        Card( // Estimated Cost With Specific BOP
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("Estimated Cost of BOP:"),
                  subtitle: Text("\$\$/month"),
                )
              ],
            )
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () => {},
                  child: MaterialButton(
                    color: Color.fromARGB(255, 219, 22, 22),
                    minWidth: 150,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: (){
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                    child: Text(
                      "Accept",
                      style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () => {},
                  child: MaterialButton(
                    color: Color.fromARGB(255, 219, 136, 136),
                    minWidth: 150,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: (){
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                    child: Text(
                      "Deny",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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