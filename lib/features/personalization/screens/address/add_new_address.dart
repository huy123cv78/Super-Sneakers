import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(showBackArrow: true,title: Text('Thêm địa chỉ')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Tên')),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Số điện thoại')),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'địa chỉ'))),
                    const SizedBox(width: HSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Mã thành phố'))),
                  ],
                ),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                  Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'thành phố'))),
                    const SizedBox(width: HSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'khu vực'))),
                  ],
                ),
                 const SizedBox(height: HSizes.spaceBtwInputFields),
                 TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'đất nước')),
                 const SizedBox(height: HSizes.defaultSpace),
               SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: (){},
    style: ElevatedButton.styleFrom(
      primary: Colors.orange, // Đổi màu nền thành màu cam
    ),
    child: const Text('lưu', style: TextStyle(color: Colors.white)), // Đổi màu chữ thành màu trắng
  ),
),

              ],
            ),
          ),
          ),
      ),
    );
  }
}