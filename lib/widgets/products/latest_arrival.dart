import 'dart:developer';

import 'package:ecommerce_flutter/consts/app_constant.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../subtitle_text.dart';

class LatestArrivalProductsWidget extends StatelessWidget {
  const LatestArrivalProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          log('TODO add the naviagate to the product details screen');
        },
        child: SizedBox(
          width: size.width * 0.45,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    imageUrl: AppConstants.imageUrl,
                    height: size.width * 0.24,
                    width: size.width * 0.32,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      'Title' * 15,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                   FittedBox(
                     child: Row(
                      children: [
                         IconButton(
                        onPressed: () {},
                        icon: const Icon(IconlyLight.heart),
                      ),
                       IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart),
                      ),
                      ],
                     ),
                     
                   ),
                   const SizedBox(height: 5),
                    const FittedBox(
                      child: SubtitleTextWidget(
                              label: '1550.00\$',
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
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
