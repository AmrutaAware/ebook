import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final Map<String, String> book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book['coverUrl']!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey,
                  height: 200,
                  width: double.infinity,
                  child: Icon(Icons.broken_image, size: 50, color: Colors.white),
                );
              },
            ),
            const SizedBox(height: 16),
            Text(
              book['title']!,
              style: Theme.of(context).textTheme.headlineLarge
            ),
            Text(
              'by ${book['author']}',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 16),
            // Add more book details here as needed
          ],
        ),
      ),
    );
  }
}
