// Flutter এর Material UI ব্যবহার করার জন্য প্রয়োজনীয় প্যাকেজ
import 'package:flutter/material.dart';

// StatelessWidget ব্যবহার করে একটি screen তৈরি
class ListV extends StatelessWidget {

  // Constructor, widget কে uniquely identify করতে key
  const ListV({super.key});

  // UI তৈরির মূল method
  @override
  Widget build(BuildContext context) {

    // Scaffold = complete screen structure
    return Scaffold(

      // উপরের AppBar
      appBar: AppBar(
        title: Text('Res widget'), // AppBar এর title
      ),

      // Body তে Column ব্যবহার করা হয়েছে
      body: Column(
        children: [

          // সাধারণ text widget
          Text(
            'Hello test',
            style: TextStyle(fontSize: 25),
          ),

          // Vertical gap
          SizedBox(height: 20),

          // Fixed size container (problem নেই)
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),

          // ❗ Fixed height Container এর ভিতরে ListView
          // এটা safe কারণ height দেওয়া আছে
          Container(
            height: 200, // height fix করা
            color: Colors.red,
            child: ListView.builder(

              // মোট কয়টা item হবে
              itemCount: 50,

              // প্রতিটা item কিভাবে বানানো হবে
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    title: Text(
                      'Taufiq',
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text('017952895484'),
                  ),
                );
              },
            ),
          ),

          // ================= Expanded =================
          Expanded(
            // Expanded বাকি সব available space নিয়ে নেয়
            child: Container(
              color: Colors.orange,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      trailing: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Taufiq',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text('017952895484'),
                    ),
                  );
                },
              ),
            ),
          ),

          // ================= Flexible =================
          Flexible(
            // Flexible বাকি জায়গা নেয় কিন্তু flexibly adjust করে
            child: Container(
              color: Colors.green,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      trailing: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Taufiq',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text('017952895484'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
