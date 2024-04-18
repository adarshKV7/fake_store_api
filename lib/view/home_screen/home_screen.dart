// ignore_for_file: prefer_const_constructors

import 'package:fake_store_api/controller/home_screen_controller.dart';
import 'package:fake_store_api/view/home_screen/single_card/single_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeScreenController>().getProductDeatils();
    });
    // context.read<HomeScreenController>().convertedToModelClass();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeScreenController>().getProductDeatils();
    });
    final provider = context.watch<HomeScreenController>();
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          centerTitle: true,
          title: Text(
            "KV Store",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: provider.modelListstore.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SingleCard(
                                item: provider.modelListstore[index]),
                          ));
                    },
                    child: Container(
                      height: 300,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 200,
                              child: Image.network(
                                provider.modelListstore?[index].image
                                        .toString() ??
                                    "",
                                scale: 1.5,
                              ),
                            ),
                          ),
                          Text(
                            provider.modelListstore?[index].title.toString() ??
                                "",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "\$${provider.modelListstore?[index].price.toString()}" ??
                                  "")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
