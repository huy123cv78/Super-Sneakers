import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:appbangiay/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/authentication/screens/login/login.dart';
import 'package:appbangiay/features/personalization/screens/address/address.dart';
import 'package:appbangiay/features/personalization/screens/profile/profile.dart';
import 'package:appbangiay/features/shop/screens/order/order.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
              HPrimaryHeaderContainer(
                child: Column(
                children: [HAppBar(title: Text('Tài khoản',style: Theme.of(context).textTheme.headlineMedium!.apply(color: HColors.white))),

                //user profiled card //HUserProfileTile
                  HUserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen())),
                 const SizedBox(height: HSizes.spaceBtwSections),//cai nay la chinh khoang cach cai box mau xanh
                ],
              ),
              ),
            //body
              Padding(
              padding: const EdgeInsets.all(HSizes.defaultSpace),
              child: Column(
                children: [
                  // account setting
                  const HSectionHeading(title: 'Thông tin tài khoảng',showActionButton: false),
                  const SizedBox(height: HSizes.spaceBtwItems),

                   HSettingsMenuTile(
                    icon: Iconsax.safe_home, 
                    title: 'Địa chỉ', 
                    subTitle: 'Thiết lập địa chỉ',
                    onTap: () => Get.to(()=>const UserAddressScreen()),
                    ),// co the them onTap: (){} de tuong tac
                  //const HSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'my cart', subTitle: 'add, remove products and move to checkout'),
                   HSettingsMenuTile(icon: Iconsax.bag_tick, title: 'Lịch sử thanh toán', subTitle: 'Đơn đặt hàng đang tiến hành và đã hoàn thành',onTap: () => Get.to(()=>const OrderScreen())),
                  const HSettingsMenuTile(icon: Iconsax.bank, title: 'Tài khoản ngân hàng', subTitle: 'Rút số dư về tài khoản ngân hàng đã đăng ký'),
                  const HSettingsMenuTile(icon: Iconsax.discount_shape, title: 'Phiếu giảm giá của tôis', subTitle: 'Danh sách tất cả các phiếu giảm giá'),
                  const HSettingsMenuTile(icon: Iconsax.notification, title: 'Thông báo', subTitle: 'Đặt bất kỳ loại tin nhắn thông báo nào'),
                  const HSettingsMenuTile(icon: Iconsax.security_card, title: 'Quyền riêng tư tài khoản', subTitle: 'Quản lý việc sử dụng dữ liệu và các tài khoản được kết nối'),

                  //app setting
                  // const SizedBox(height: HSizes.spaceBtwSections),
                  // const HSectionHeading(title: 'app setting',showActionButton: false),
                  // const SizedBox(height: HSizes.spaceBtwItems),
                  // const HSettingsMenuTile(icon: Iconsax.document_upload, title: 'load data', subTitle: 'up load data'),
                  // HSettingsMenuTile(
                  //   icon: Iconsax.location, 
                  //   title: 'geolocation', 
                  //   subTitle: 'set recommendation based on location',
                  //   trailing: Switch(value: true, onChanged: (value) {}),// chu true o day la bat cong tat
                  //   ),

                  //    HSettingsMenuTile(
                  //   icon: Iconsax.security_user, 
                  //   title: 'safe mode', 
                  //   subTitle: 'search result is safe for all ages',
                  //   trailing: Switch(value: false, onChanged: (value) {}),
                  //   ),

                  //    HSettingsMenuTile(
                  //   icon: Iconsax.image, 
                  //   title: 'HD Image Quality', 
                  //   subTitle: 'set image quality to be seen',
                  //   trailing: Switch(value: false, onChanged: (value) {}),
                  //   ),
                  
                  // logout button
                  const SizedBox(height: HSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(HColors.primary),
                      side: MaterialStateProperty.all<BorderSide>(
                       const BorderSide(color: Colors.white), // Màu của border
                       ),
                       ),
                      child: const Text('Đăng xuất',style: TextStyle(color: HColors.white))),
                  ),
                  // const SizedBox(height: HSizes.spaceBtwSections * 2.5),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}

