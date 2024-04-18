// ignore_for_file: prefer_const_constructors

import 'package:fake_store_api/model/store_model.dart';
import 'package:flutter/material.dart';

class SingleCard extends StatefulWidget {
  const SingleCard({super.key, this.item});
  final FakeStoreModel? item;

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.network(widget.item?.image.toString() ?? ""),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    widget.item?.title.toString() ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$${widget.item?.price}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.item?.description.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(widget.item?.rating?.rate.toString() ?? ""),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Add to cart",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
