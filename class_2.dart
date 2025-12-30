// Flutter এর Material Design widget গুলো ব্যবহার করার জন্য import
import 'package:flutter/material.dart';

// StatelessWidget ব্যবহার করে একটি screen/widget তৈরি করা হচ্ছে
class Module12Class2 extends StatelessWidget {

  // Constructor, super.key widget কে uniquely identify করতে সাহায্য করে
  const Module12Class2({super.key});

  // UI তৈরির মূল method
  @override
  Widget build(BuildContext context) {

    // Scaffold একটি complete page layout দেয়
    return Scaffold(

      // AppBar = screen এর উপরের অংশ
      appBar: AppBar(
        title: Text('List view'), // AppBar এর title
      ),

      // Body অংশে ListView.builder ব্যবহার করা হয়েছে
      body: ListView.builder(

        // মোট কয়টা item তৈরি হবে
        itemCount: 50,

        // প্রতিটি item কিভাবে তৈরি হবে তার logic
        itemBuilder: (context, index) {

          // প্রতিটি item কে Card widget এর ভেতরে রাখা হয়েছে
          return Card(

            // ListTile হলো ready-made list item layout
            child: ListTile(

              // বাম পাশে icon
              leading: Icon(Icons.phone),

              // ডান পাশে delete icon (লাল রঙ)
              trailing: Icon(
                Icons.delete,
                color: Colors.red,
              ),

              // প্রধান লেখা (title)
              title: Text(
                'Taufiq',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              // নিচের ছোট লেখা (subtitle)
              subtitle: Text('017952895484'),
            ),
          );
        },
      ),
    );
  }
}
