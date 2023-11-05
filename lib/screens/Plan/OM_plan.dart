import 'package:flutter/material.dart';
import './offer_plan.dart';
import './manage_plan.dart';

class OMPlan extends StatelessWidget{
  const OMPlan({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Check: Customer Plan Status")
      ),
      body: const RadioListTileExample(),
    );
  }
}

enum SingingCharacter { noPlan, P }

const List<String> list = <String>['Plan Type A', 'Plan Type B',
                                   'Plan Type C', 'Plan Type D'];


class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  SingingCharacter? _character = SingingCharacter.noPlan;
  String dropdownValue = list.first;
  bool havePlan = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 9, top: 9),
          child: Text("Does the customer have a plan?",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16)),
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('No Plan'),
          value: SingingCharacter.noPlan,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
              havePlan = false;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Have a Plan'),
          value: SingingCharacter.P,

          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
              havePlan = true;
            });
          },
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 63),
          child: DropdownMenu<String>(
            initialSelection: list.first,
            enabled: havePlan,
            onSelected: (String? value) {
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
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
              color: Color.fromARGB(255, 219, 22, 22),
              minWidth: 400,
              padding: EdgeInsets.only(left: 20, right: 20),
              onPressed: (){
                if (havePlan) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ManagePlan(title: 'ThirdPage', dropdownValue);
                  }));
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OfferPlan(title: 'SecondPage');
                  }));
                }
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
      ],
    );
  }
}

