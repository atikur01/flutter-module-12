// Flutter এর Material Design widget ব্যবহার করার জন্য প্রয়োজনীয় প্যাকেজ
import 'package:flutter/material.dart';

// StatelessWidget ব্যবহার করে একটি নতুন widget তৈরি করা হচ্ছে
class Module12Class1 extends StatelessWidget {

  // Constructor, এখানে super.key ব্যবহার করা হয়েছে widget এর unique identity এর জন্য
  const Module12Class1({super.key});

  // Widget এর UI তৈরি করার মূল method
  @override
  Widget build(BuildContext context) {

    // Scaffold হলো একটি basic page structure (AppBar, body ইত্যাদি দেয়)
    return Scaffold(

      // AppBar = উপরের header section
      appBar: AppBar(
        title: Text('Stack'), // AppBar এর title
      ),

      // Body অংশ
      body: Center( // Center widget body কে মাঝখানে রাখে
        child: Column( // Column = widget গুলো vertical ভাবে সাজায়
          mainAxisAlignment: MainAxisAlignment.center, // Column এর content মাঝখানে রাখে
          children: [

            // ===================== Stack Example 1 =====================
            Stack(
              // Stack এর children একটার উপর একটা বসে
              children: [

                // নিচের Container (সবচেয়ে নিচে থাকবে)
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),

                // Positioned ব্যবহার করে blue box কে নির্দিষ্ট জায়গায় বসানো
                Positioned(
                  left: 10, // বাম দিক থেকে 10px
                  top: 10,  // উপর থেকে 10px
                  child: Container(
                    color: Colors.blue,
                    height: 180,
                    width: 180,
                  ),
                ),

                // আরেকটি Positioned green box
                Positioned(
                  left: 25,
                  top: 25,
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),

            // দুইটি widget এর মাঝে 10px ফাঁকা জায়গা
            SizedBox(height: 10),

            // ===================== Stack Example 2 (Image Overlay) =====================
            Stack(
              children: [

                // Internet থেকে image লোড করা হচ্ছে
                Image.network(
                  'https://images.unsplash.com/photo-1566073771259-6a8506099945',
                  height: 180,
                  width: double.infinity, // পুরো width জুড়ে
                  fit: BoxFit.cover, // image crop করে cover করবে
                ),

                // Image এর উপর কালো transparent overlay
                Container(
                  height: 180,
                  color: Colors.black.withOpacity(0.35),
                ),

                // Image এর উপর Row বসানো
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // দুই পাশে content
                  children: [

                    // ❌ NOTE: Positioned সাধারণত Stack এর সরাসরি child হতে হয়
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'BEST DEAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),

                    // Favourite icon button
                    IconButton(
                      onPressed: () {}, // button click action
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10),

            // ===================== Stack Example 3 (Button on Image) =====================
            Stack(
              children: [

                // Background image
                Image.network(
                  'https://images.unsplash.com/photo-1566073771259-6a8506099945',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // Image এর নিচে button বসানো
                Positioned(
                  bottom: 20, // নিচ থেকে 20px
                  left: 20,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {}, // button click
                    child: Text(
                      'Book Now',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
