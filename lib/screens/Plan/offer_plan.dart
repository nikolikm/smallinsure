import 'package:flutter/material.dart';
import './show_plan.dart';

class OfferPlan extends StatelessWidget{
  const OfferPlan({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Small Insure")
      ),
      body: RadioListTileExample(),
    );
  }
}

enum SingingCharacter { noPlan, P }

const List<String> list = <String>['Plan Type A', 'Plan Type B',
                                   'Plan Type C', 'Plan Type D'];


class RadioListTileExample extends StatefulWidget {
  final TextEditingController iconController = TextEditingController();
  PlanLabel? selectedPlan;

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
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
            label: const Text("Select State"),
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
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5),
          child: DropdownMenu<String>(
            width: 380,
            label: const Text("Select Business Type"),
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
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5),
          child: DropdownMenu<String>(
            width: 380,
            label: const Text("Where do you Work"),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Align(alignment: Alignment.center,
              child: Text("Desired Inventory & Equipment Coverage", style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0 ),)),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              )),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Align(alignment: Alignment.center,
              child: Text("Liability Coverage Limit", style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0 ),)),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              )),),
        ),
        Card( // Policy name card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("State BOP Estimate Cost:"),
                  subtitle: Text("\$\$/month"),
                )
              ],
            )
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
              onPressed: () => {},
              child: MaterialButton(
                color: Color.fromARGB(255, 219, 22, 22),
                minWidth: 400,
                padding: EdgeInsets.only(left: 20, right: 20),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ShowPlan(title: 'SecondPage');
                    }));
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