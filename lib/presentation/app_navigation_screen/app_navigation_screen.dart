import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Satu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingSatuScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Dua".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingDuaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Tiga".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTigaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up (Blank)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBlankScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Isi Profil".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.isiProfilScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lupa Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.lupaPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lupa Password Type OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lupaPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lupa Password Filled Type".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lupaPasswordFilledTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tempat Populer".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tempatPopulerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifikasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notifikasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookmarks".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookmarksScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hotel Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.galleryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select date & Guest".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectDateGuestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Booking Name - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingNameTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.choosePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Kartu Kredit".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addKartuKreditScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Kartu Added".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kartuAddedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Confirm Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "View Ticket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewTicketScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.refundMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
