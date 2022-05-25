import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe/core/functions/checkItems.dart';
import 'package:tic_tac_toe/core/functions/release_items.dart';
import 'package:tic_tac_toe/core/future/showModal.dart';
import 'package:tic_tac_toe/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Stack(
          children: [
            const SizedBox(
              child: Image(
                image: AssetImage('assets/images/grid1.webp'),
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: height * 0.175,
              left: height * 0.02,
              child: SizedBox(
                width: height * .416,
                height: height * .42,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.01),
                          child: SvgPicture.asset(
                            imgList[index],
                            width: height * 5,
                            height: height * 0.12,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      onTap: () {
                        list[index] == 0 ? check(height, index) : null;
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  void check(height, index) {
    String photo =
        (count % 2) == 0 ? 'assets/images/oo.svg' : 'assets/images/x.svg';
    imgList[index] = photo;
    list[index] = (count % 2) == 0 ? 2 : 1;
    count++;
    var winner = checkItems(1) != 0
        ? 1
        : checkItems(2) != 0
            ? 2
            : 0;

    if (winner != 0 || count == 9) {
      modal(winner, height, context);
      release();
    }
    setState(() {});
  }
}
