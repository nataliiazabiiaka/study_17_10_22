import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:study_17_10_22/util/my_button.dart';
import 'package:study_17_10_22/util/my_card.dart';
import 'package:study_17_10_22/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
                iconSize: 40,
                color: Colors.pink[200],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                iconSize: 40,
                color:  Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.25,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 342.23,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 420.42,
                    cardNumber: 12345678,
                    expiryMonth: 8,
                    expiryYear: 25,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/wallet.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/finance.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(right: 25.0, top: 25, left: 25),
              child: MyListTile(
                iconImagePath: 'assets/icons/statistics.png',
                tileTitle: 'Statistics',
                tileSubTitle: 'Payment and Income',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 25, left: 25),
              child: MyListTile(
                iconImagePath: 'assets/icons/transaction.png',
                tileTitle: 'Transactions',
                tileSubTitle: 'Transaction History',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
