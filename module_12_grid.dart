// Flutter এর Material Design widget ব্যবহার করার জন্য import
import 'package:flutter/material.dart';

// StatelessWidget ব্যবহার করে একটি Grid screen তৈরি
class Module12Grid extends StatelessWidget {

  // Constructor, key widget identify করার জন্য
  const Module12Grid({super.key});

  // UI build করার মূল method
  @override
  Widget build(BuildContext context) {

    // Scaffold = complete page structure
    return Scaffold(

      // AppBar section
      appBar: AppBar(
        title: Text('Grid view'), // AppBar title
      ),

      /*
      =========================================================
      ❌ নিচের অংশটি comment করা আছে
      এটি GridView.count এর example
      Problem:
      - বড় data হলে performance issue
      - সব child একসাথে render হয়
      =========================================================
      */

      // ========================================================
      // ✅ GridView.builder (BEST PRACTICE)
      // ========================================================
      body: GridView.builder(

        // Grid এর layout কেমন হবে তা define করে
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 3, // এক row তে 3টি item
          crossAxisSpacing: 10, // column এর মাঝে gap
          mainAxisSpacing: 10,  // row এর মাঝে gap
        ),

        // মোট কয়টা item হবে
        itemCount: 20,

        // প্রতিটা grid item কিভাবে বানানো হবে
        itemBuilder: (context, index) {

          // প্রতিটা grid cell এর structure
          return Column(
            children: [

              // Card widget (material design look)
              Card(

                // Card এর shadow depth
                elevation: 10,

                // Card এর shape / border radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),

                // Card background color
                color: Colors.red,

                // Card এর ভিতরের padding
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  // Card এর ভিতরে icon
                  child: Icon(
                    Icons.phone,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),

              // Card এর নিচে label/text
              Text('Add money'),
            ],
          );
        },
      ),
    );
  }
}
