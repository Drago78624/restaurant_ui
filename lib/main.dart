import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Restaurant'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.grey[300],
        actions: const [
          SizedBox(
            width: 50,
            child: Icon(Icons.account_circle),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              // margin: EdgeInsets.only(top: 20),
              height: 180,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      SizedBox(
                        height: 180,
                        width: 250,
                        child: Image.asset("assets/images/s1.jpeg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: const Color.fromARGB(80, 0, 0, 0),
                          child: const Text(
                            "item 1",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    width: 10,
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: 450,
              child: ListView.separated(itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(width: 75, color: Colors.red, child: Image.asset("assets/images/s1.jpeg"),),
                  title: const Text("Recipe 1"),
                  subtitle: const Text("asi recipe ksi ka baap nhi bnaskta"),
                  trailing: ElevatedButton(onPressed: () {  }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                  child: const Icon(Icons.add, color: Colors.white,),),
                );
              }, separatorBuilder: (context, index) => const Divider(), itemCount: 10, scrollDirection: Axis.vertical,),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.fastfood_outlined,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
