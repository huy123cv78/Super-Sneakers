import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/brands/brand_card.dart';
import 'package:appbangiay/common/widgets/layouts/grid_layout.dart';
import 'package:appbangiay/common/widgets/products/sortable/sortable_products.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/shop/screens/brand/brand_products.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(title: Text('Hãng giày'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              //heading
              const HSectionHeading(title: 'Hãng giày',showActionButton: false),
              const SizedBox(height: HSizes.spaceBtwItems),

              //brans
              HGridLayout(
                itemCount: 10, 
                mainAxisExtent: 80,
                itemBuilder: (context, index) =>  HBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() =>const BrandProducts()),
                  ),
                  ),
            ],
          ),
          ),
      ),
    );
  }
}