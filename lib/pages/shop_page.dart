import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/models/shoe.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to cart
  void addShoeToCart(Shoe shoe){
       Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

  //      alert the user , shoe successfully added
    showDialog(context: context, builder: (context)=>AlertDialog(

      title: Text("Successfully added!"),
      content: Text("Check your cart"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(children: [
              Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  )),
              //   message
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Everyone flies.. some fly lnger then others",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),

              //   hot picks

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Hot Picks",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),



              Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        // create a shoe
                       Shoe shoe  = value.getShoeList()[index];

                        return ShoeTile(
                          shoe: shoe, onTap: () => addShoeToCart(shoe),
                        );
                      })),




              const Padding(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Divider(
                  color: Colors.white,
                ),
              )
            ]));
  }
}
