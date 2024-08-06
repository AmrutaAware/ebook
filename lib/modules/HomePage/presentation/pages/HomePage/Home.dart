import 'package:ebook_app/modules/HomePage/data/models/data.dart';
import 'package:ebook_app/modules/HomePage/presentation/pages/HomePage/Allbooks.dart';
import 'package:ebook_app/modules/HomePage/presentation/pages/HomePage/BookDetails.dart';
import 'package:ebook_app/modules/HomePage/presentation/pages/HomePage/Widget/Appbar.dart';
import 'package:ebook_app/modules/HomePage/presentation/pages/HomePage/Widget/Category.dart';
import 'package:ebook_app/modules/HomePage/presentation/pages/HomePage/search_Field.dart';
import 'package:ebook_app/utils/components/bookcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  final TextEditingController _searchController = TextEditingController();
  var bookData = [
    {"title": "Book 1", "author": "Author 1", "coverUrl": "https://example.com/book1.jpg"},
    {"title": "Book 2", "author": "Author 2", "coverUrl": "https://example.com/book2.jpg"},
    {"title": "Book 3", "author": "Author 3", "coverUrl": "https://example.com/book3.jpg"},
    {"title": "Book 4", "author": "Author 4", "coverUrl": "https://example.com/book4.jpg"},
    {"title": "Book 5", "author": "Author 5", "coverUrl": "https://example.com/book5.jpg"},
  ];

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void _searchBook(String query) {
    final book = bookData.firstWhere(
      (book) => book['title']!.toLowerCase() == query.toLowerCase(),
      orElse: () => {},
    );

    if (book.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookDetailPage(book: book),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No results found')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Theme.of(context).colorScheme.primary,
                child: Column(
                  children: [
                    HomeAppBar(
                      onThemeToggle: _toggleTheme,
                      isDarkMode: isDarkMode,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Good Morning✌️",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                        Text(
                          "Saloni",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Time to read a book and enhance your knowledge",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.background,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    MyInputTextField(
                      controller: _searchController,
                      onSubmitted: _searchBook,
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Text(
                          "Topics",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: CategoryData.map((e) => CategoryWidget(
                            iconPath: e["icon"]!, btnName: e["label"]!)).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Trending",
                            style: Theme.of(context).textTheme.labelMedium),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllBooksPage(bookData: bookData),
                              ),
                            );
                          },
                          child: Text(
                            "See All",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...bookData.take(4).map((e) => BookCard(
                                title: e["title"]!,
                                author: e["author"]!,
                                coverUrl: e["coverUrl"]!,
                                ontap: () {},
                              )).toList(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllBooksPage(bookData: bookData),
                                ),
                              );
                            },
                            // child: Container(
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 10, vertical: 20),
                            //   child: Text(
                            //     "See More",
                            //     style: Theme.of(context)
                            //         .textTheme
                            //         .bodyMedium
                            //         ?.copyWith(
                            //           color: Theme.of(context)
                            //               .colorScheme
                            //               .primary,
                            //         ),
                            //   ),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

