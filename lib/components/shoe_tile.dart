import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class ShoeTile extends StatefulWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //   shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 10),
                child: Image.asset(widget.shoe.imagePath),
              )),

          //   description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              widget.shoe.description,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          //   price + details

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //   shoe name
                    Text(
                      widget.shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //   price
                    Text(
                      '\s' + widget.shoe.price,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                //   plus button for adding
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: Colors.black),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )

          //   button to add to cart
        ],
      ),
    );
  }
}
