import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInputTextField extends StatefulWidget {
  const MyInputTextField({super.key, required TextEditingController controller, required void Function(String query) onSubmitted});

  @override
  State<MyInputTextField> createState() => _MyInputTextFieldState();
}

class _MyInputTextFieldState extends State<MyInputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.background,
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              SvgPicture.asset("assets/icons/search.svg"),
                              SizedBox(width:10),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Search here..",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
  }
}