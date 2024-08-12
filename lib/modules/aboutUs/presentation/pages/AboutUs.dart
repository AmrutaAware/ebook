import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Color(0xFF6200EA),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width:90,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/myEbookLogo.png") ,radius: 60),
            
          ),
            SizedBox(height: 20),
            Text(
              'Welcome to BookBliss',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6200EA),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'At BookBliss, we believe that reading is not just a hobby, but a journey into new worlds, ideas, and emotions. '
              'Our mission is to make this journey as seamless and enjoyable as possible for readers around the world.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'With a vast library of eBooks, personalized recommendations, and a user-friendly interface, BookBliss is your go-to '
                'platform for all your reading needs. Whether you\'re a fan of fiction, non-fiction, or something in between, we have something for everyone.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6200EA),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Our team is passionate about books and technology. We work tirelessly to bring the best reading experience '
              'to our users, ensuring that BookBliss remains at the cutting edge of the digital reading revolution.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Add your navigation or functionality here
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: Color(0xFF6200EA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Learn More',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}