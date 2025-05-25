// 20250524_html_home_page_import

import 'package:flutter/material.dart';

void main() => runApp(ChineasyApp());

class ChineasyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chineasy',
      home: Scaffold(
        appBar: ChineasyAppBar(), // <-- Add this line
        backgroundColor: Color(0xFFF9F9F9),
        body: Center(child: SingleChildScrollView(child: ChineasyHome())),
      ),
    );
  }
}

// Add your custom AppBar widget here
class ChineasyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
      title: Text(
        'ChineAAAAAAAAAAAAAsy',
        style: TextStyle(
          color: Color(0xFF222222),
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      iconTheme: IconThemeData(color: Color(0xFF222222)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class ChineasyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      constraints: BoxConstraints(maxWidth: 400),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFCCCCCC), width: 2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '㊗Chineasy',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              border: Border.all(
                color: Color(0xFFCCCCCC),
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '📋 Paste text or drop an image here',
                  style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                ),
                SizedBox(height: 10),
                Text(
                  '⌨ Paste Chinese or screenshot text',
                  style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                ),
                SizedBox(height: 10),
                Text(
                  '🖼️ Drag and drop an image',
                  style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0078D4),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  textStyle: TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text('📸 Camera'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0078D4),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  textStyle: TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text('🎙️ Record'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
