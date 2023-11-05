import 'package:flutter/material.dart';
import 'package:smallinsure/screens/Coverage/coverage_page.dart';
import './screens/Plan/OM_plan.dart';
import "./screens/Claims/sub_form.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Test'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  void showLoading() {
    setState(() {
      isLoading = true;
    });
  }

  void hideLoading() {
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Small Insure"),
      ),
      body: Column(
        children: [
          Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.list_alt, size: 50),
                    title: Text("Claim 1"),
                    subtitle: Text("Status: Processing\nLorem ipsum donor..."),
                  )
                ],
              )
          ),
          Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.list_alt, size: 50),
                    title: Text("Claim 2"),
                    subtitle: Text("Status: Processing\nLorem ipsum donor..."),
                  )
                ],
              )
          ),
          Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.list_alt, size: 50),
                    title: Text("Claim 3"),
                    subtitle: Text("Status: Processing\nLorem ipsum donor..."),
                  )
                ],
              )
          ),
          Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.list_alt, size: 50),
                    title: Text("Claim 4"),
                    subtitle: Text("Status: Processing\nLorem ipsum donor..."),
                  )
                ],
              )
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.center,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.people, size: 50),
                          title: Text("John Doe"),
                          subtitle: Text("Insured since 2022.\n"
                                        "Insurance policy: Type A"),
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ // BOTTOM MENU BAR ROW (each button + label is a column)
                        Column(children: [
                            Row(children: [
                                IconButton(
                                  onPressed: () {
                                    showLoading();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const OMPlan(title: 'SecondPage');
                                    })).then((value) => hideLoading());
                                  },
                                  icon: const Icon(Icons.fact_check_outlined),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Plans", textAlign: TextAlign.center),
                              ],
                            )
                          ],
                        ),
                        Column(children: [
                            Row(children: [
                              IconButton(
                                onPressed: () {
                                  showLoading();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return const CoveragePage(title: 'SecondPage');
                                  })).then((value) => hideLoading());
                                },
                                icon: const Icon(Icons.shield_outlined),
                              ),
                            ],
                            ),
                            Row(children: [
                              Text("Coverage", textAlign: TextAlign.center),
                            ],)
                          ],
                        ),
                        Column(children: [
                          Row(children: [
                            IconButton(
                              onPressed: () {
                                showLoading();
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const SubForm(title: 'ClaimPage');
                                })).then((value) => hideLoading());
                              },
                              icon: const Icon(Icons.featured_play_list_outlined),
                            ),
                          ],),
                          Row(children: [
                            Text("Claims", textAlign: TextAlign.center),
                          ])
                        ])
                      ]
                    ),
                    const SizedBox(height: 10),
                  ]),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isLoading,
            child: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}