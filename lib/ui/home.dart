import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List quotes = [
    "I believe we are here on the planet Earth to live, grow up and do what we can to make this world a better place for all people to enjoy freedom.",
    "To love oneself is the beginning of a lifelong romance.",
    "Sometimes the most important thing in a whole day is the rest we take between two deep breaths.",
    "Almost everything will work again if you unplug it for a few minutes including you.",
    "Knowing how to be solitary is central to the art of loving. When we can be alone, we can be with others without using them as a means of escape.",
    "Time you enjoy wasting is not wasted time.",
    "Self-care is how you take your power back.",
    "Being happy never goes out of style."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes of the Day"),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: const TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                      ),
                    ))),
              ),
            ),
            const Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: ElevatedButton.icon(
                onPressed: _showQuote,
                icon: const Icon(Icons.wb_sunny),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent.shade700,
                ),
                label: const Text(
                  "Inspire Me!!",
                  style: TextStyle(fontSize: 18.5, color: Colors.white),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}

class ScaffoldExample extends StatelessWidget {
  ScaffoldExample({super.key});

  _tapButton() {
    debugPrint("Tapped Button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade400,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("EmailTapped"),
              icon: Icon(Icons.email)),
          IconButton(
            onPressed: _tapButton,
            icon: Icon(Icons.access_alarm),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint("Hello")),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.back_hand_outlined), label: "")
        ],
        onTap: (int index) => debugPrint("tapped Item : $index"),
      ),
      backgroundColor: Colors.amberAccent.shade400,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CustomButton()],
          )),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(
          content: Text("Helo Helo"),
          padding: EdgeInsets.all(20.5),
          backgroundColor: Colors.black26,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(8.5)),
        child: const Text("Push Me"),
      ),
    );
  }
}
