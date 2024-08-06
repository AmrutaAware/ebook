import 'package:ebook_app/utils/components/bookcard.dart';
import 'package:flutter/material.dart';


class AllBooksPage extends StatelessWidget {
  final List<Map<String, String>> bookData;

  const AllBooksPage({Key? key, required this.bookData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Books'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: bookData.length,
        itemBuilder: (ctx, i) => BookCard(
          title: bookData[i]["title"]!,
          author: bookData[i]["author"]!,
          coverUrl: bookData[i]["coverUrl"]!,
          ontap: () {
            // Handle book card tap if needed
          },
        ),
      ),
    );
  }
}
