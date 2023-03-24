import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class TwoPartContainer extends StatelessWidget {
  const TwoPartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Stack(
        children: [
          Align(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff6EC647),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              width: Get.width,
              height: Get.height * 0.09,
              child: SizedBox(
                width: Get.width * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "Extra \u{00A3}50*",
                        style: TextStyle(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            color: AppPaintings.kWhite,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "If you refer a friend",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppPaintings.kWhite,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () => log("Learn More"),
                        child: Text(
                          "Learn More",
                          style: TextStyle(
                              fontSize: 8,
                              overflow: TextOverflow.ellipsis,
                              color: AppPaintings.kWhite,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              height: Get.height * 0.09,
              width: Get.width * 0.56,
              decoration: const BoxDecoration(
                  color: Color(0xff64BD3C),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Text(
                          "   \u{00A3} 50 OFF*",
                          style: TextStyle(
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                              color: AppPaintings.kWhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () => log("shop now"),
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2)),
                              child: Text(
                                "SHOP NOW",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: AppPaintings.kBlack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Text(
                          "on first 5 orders",
                          style: TextStyle(
                            fontSize: 10,
                            color: AppPaintings.kWhite,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Text(
                        "*T&Cs Apply",
                        style: TextStyle(
                          fontSize: 8,
                          color: AppPaintings.kWhite,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
