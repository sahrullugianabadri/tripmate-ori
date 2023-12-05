import 'package:tripmate_ori/presentation/welcome_screen/welcome_screen.dart';
import 'package:tripmate_ori/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:tripmate_ori/presentation/onboarding_satu_screen/onboarding_satu_screen.dart';
import 'package:tripmate_ori/presentation/onboarding_satu_screen/binding/onboarding_satu_binding.dart';
import 'package:tripmate_ori/presentation/onboarding_dua_screen/onboarding_dua_screen.dart';
import 'package:tripmate_ori/presentation/onboarding_dua_screen/binding/onboarding_dua_binding.dart';
import 'package:tripmate_ori/presentation/onboarding_tiga_screen/onboarding_tiga_screen.dart';
import 'package:tripmate_ori/presentation/onboarding_tiga_screen/binding/onboarding_tiga_binding.dart';
import 'package:tripmate_ori/presentation/login_screen/login_screen.dart';
import 'package:tripmate_ori/presentation/login_screen/binding/login_binding.dart';
import 'package:tripmate_ori/presentation/sign_up_blank_screen/sign_up_blank_screen.dart';
import 'package:tripmate_ori/presentation/sign_up_blank_screen/binding/sign_up_blank_binding.dart';
import 'package:tripmate_ori/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:tripmate_ori/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:tripmate_ori/presentation/isi_profil_screen/isi_profil_screen.dart';
import 'package:tripmate_ori/presentation/isi_profil_screen/binding/isi_profil_binding.dart';
import 'package:tripmate_ori/presentation/lupa_password_screen/lupa_password_screen.dart';
import 'package:tripmate_ori/presentation/lupa_password_screen/binding/lupa_password_binding.dart';
import 'package:tripmate_ori/presentation/lupa_password_type_otp_screen/lupa_password_type_otp_screen.dart';
import 'package:tripmate_ori/presentation/lupa_password_type_otp_screen/binding/lupa_password_type_otp_binding.dart';
import 'package:tripmate_ori/presentation/lupa_password_filled_type_screen/lupa_password_filled_type_screen.dart';
import 'package:tripmate_ori/presentation/lupa_password_filled_type_screen/binding/lupa_password_filled_type_binding.dart';
import 'package:tripmate_ori/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:tripmate_ori/presentation/create_new_password_screen/binding/create_new_password_binding.dart';
import 'package:tripmate_ori/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:tripmate_ori/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import 'package:tripmate_ori/presentation/tempat_populer_screen/tempat_populer_screen.dart';
import 'package:tripmate_ori/presentation/tempat_populer_screen/binding/tempat_populer_binding.dart';
import 'package:tripmate_ori/presentation/notifikasi_screen/notifikasi_screen.dart';
import 'package:tripmate_ori/presentation/notifikasi_screen/binding/notifikasi_binding.dart';
import 'package:tripmate_ori/presentation/bookmarks_screen/bookmarks_screen.dart';
import 'package:tripmate_ori/presentation/bookmarks_screen/binding/bookmarks_binding.dart';
import 'package:tripmate_ori/presentation/hotel_details_screen/hotel_details_screen.dart';
import 'package:tripmate_ori/presentation/hotel_details_screen/binding/hotel_details_binding.dart';
import 'package:tripmate_ori/presentation/gallery_screen/gallery_screen.dart';
import 'package:tripmate_ori/presentation/gallery_screen/binding/gallery_binding.dart';
import 'package:tripmate_ori/presentation/location_screen/location_screen.dart';
import 'package:tripmate_ori/presentation/location_screen/binding/location_binding.dart';
import 'package:tripmate_ori/presentation/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:tripmate_ori/presentation/select_date_guest_screen/binding/select_date_guest_binding.dart';
import 'package:tripmate_ori/presentation/booking_name_tab_container_screen/booking_name_tab_container_screen.dart';
import 'package:tripmate_ori/presentation/booking_name_tab_container_screen/binding/booking_name_tab_container_binding.dart';
import 'package:tripmate_ori/presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:tripmate_ori/presentation/choose_payment_method_screen/binding/choose_payment_method_binding.dart';
import 'package:tripmate_ori/presentation/add_kartu_kredit_screen/add_kartu_kredit_screen.dart';
import 'package:tripmate_ori/presentation/add_kartu_kredit_screen/binding/add_kartu_kredit_binding.dart';
import 'package:tripmate_ori/presentation/kartu_added_screen/kartu_added_screen.dart';
import 'package:tripmate_ori/presentation/kartu_added_screen/binding/kartu_added_binding.dart';
import 'package:tripmate_ori/presentation/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:tripmate_ori/presentation/confirm_payment_screen/binding/confirm_payment_binding.dart';
import 'package:tripmate_ori/presentation/view_ticket_screen/view_ticket_screen.dart';
import 'package:tripmate_ori/presentation/view_ticket_screen/binding/view_ticket_binding.dart';
import 'package:tripmate_ori/presentation/refund_method_screen/refund_method_screen.dart';
import 'package:tripmate_ori/presentation/refund_method_screen/binding/refund_method_binding.dart';
import 'package:tripmate_ori/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:tripmate_ori/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:tripmate_ori/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:tripmate_ori/presentation/notification_settings_screen/binding/notification_settings_binding.dart';
import 'package:tripmate_ori/presentation/security_screen/security_screen.dart';
import 'package:tripmate_ori/presentation/security_screen/binding/security_binding.dart';
import 'package:tripmate_ori/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tripmate_ori/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingSatuScreen = '/onboarding_satu_screen';

  static const String onboardingDuaScreen = '/onboarding_dua_screen';

  static const String onboardingTigaScreen = '/onboarding_tiga_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String isiProfilScreen = '/isi_profil_screen';

  static const String lupaPasswordScreen = '/lupa_password_screen';

  static const String lupaPasswordTypeOtpScreen =
      '/lupa_password_type_otp_screen';

  static const String lupaPasswordFilledTypeScreen =
      '/lupa_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String tempatPopulerScreen = '/tempat_populer_screen';

  static const String notifikasiScreen = '/notifikasi_screen';

  static const String bookmarksScreen = '/bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchPageTabContainerPage =
      '/search_page_tab_container_page';

  static const String searchTypePage = '/search_type_page';

  static const String filterResultPage = '/filter_result_page';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNamePage = '/booking_name_page';

  static const String bookingNameTabContainerScreen =
      '/booking_name_tab_container_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addKartuKreditScreen = '/add_kartu_kredit_screen';

  static const String kartuAddedScreen = '/kartu_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingPage = '/booking_ongoing_page';

  static const String bookingOngoingTabContainerPage =
      '/booking_ongoing_tab_container_page';

  static const String bookingCompletedPage = '/booking_completed_page';

  static const String bookingCancelledPage = '/booking_cancelled_page';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: onboardingSatuScreen,
      page: () => OnboardingSatuScreen(),
      bindings: [
        OnboardingSatuBinding(),
      ],
    ),
    GetPage(
      name: onboardingDuaScreen,
      page: () => OnboardingDuaScreen(),
      bindings: [
        OnboardingDuaBinding(),
      ],
    ),
    GetPage(
      name: onboardingTigaScreen,
      page: () => OnboardingTigaScreen(),
      bindings: [
        OnboardingTigaBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpBlankScreen,
      page: () => SignUpBlankScreen(),
      bindings: [
        SignUpBlankBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: isiProfilScreen,
      page: () => IsiProfilScreen(),
      bindings: [
        IsiProfilBinding(),
      ],
    ),
    GetPage(
      name: lupaPasswordScreen,
      page: () => LupaPasswordScreen(),
      bindings: [
        LupaPasswordBinding(),
      ],
    ),
    GetPage(
      name: lupaPasswordTypeOtpScreen,
      page: () => LupaPasswordTypeOtpScreen(),
      bindings: [
        LupaPasswordTypeOtpBinding(),
      ],
    ),
    GetPage(
      name: lupaPasswordFilledTypeScreen,
      page: () => LupaPasswordFilledTypeScreen(),
      bindings: [
        LupaPasswordFilledTypeBinding(),
      ],
    ),
    GetPage(
      name: createNewPasswordScreen,
      page: () => CreateNewPasswordScreen(),
      bindings: [
        CreateNewPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: tempatPopulerScreen,
      page: () => TempatPopulerScreen(),
      bindings: [
        TempatPopulerBinding(),
      ],
    ),
    GetPage(
      name: notifikasiScreen,
      page: () => NotifikasiScreen(),
      bindings: [
        NotifikasiBinding(),
      ],
    ),
    GetPage(
      name: bookmarksScreen,
      page: () => BookmarksScreen(),
      bindings: [
        BookmarksBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailsScreen,
      page: () => HotelDetailsScreen(),
      bindings: [
        HotelDetailsBinding(),
      ],
    ),
    GetPage(
      name: galleryScreen,
      page: () => GalleryScreen(),
      bindings: [
        GalleryBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: selectDateGuestScreen,
      page: () => SelectDateGuestScreen(),
      bindings: [
        SelectDateGuestBinding(),
      ],
    ),
    GetPage(
      name: bookingNameTabContainerScreen,
      page: () => BookingNameTabContainerScreen(),
      bindings: [
        BookingNameTabContainerBinding(),
      ],
    ),
    GetPage(
      name: choosePaymentMethodScreen,
      page: () => ChoosePaymentMethodScreen(),
      bindings: [
        ChoosePaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: addKartuKreditScreen,
      page: () => AddKartuKreditScreen(),
      bindings: [
        AddKartuKreditBinding(),
      ],
    ),
    GetPage(
      name: kartuAddedScreen,
      page: () => KartuAddedScreen(),
      bindings: [
        KartuAddedBinding(),
      ],
    ),
    GetPage(
      name: confirmPaymentScreen,
      page: () => ConfirmPaymentScreen(),
      bindings: [
        ConfirmPaymentBinding(),
      ],
    ),
    GetPage(
      name: viewTicketScreen,
      page: () => ViewTicketScreen(),
      bindings: [
        ViewTicketBinding(),
      ],
    ),
    GetPage(
      name: refundMethodScreen,
      page: () => RefundMethodScreen(),
      bindings: [
        RefundMethodBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationSettingsScreen,
      page: () => NotificationSettingsScreen(),
      bindings: [
        NotificationSettingsBinding(),
      ],
    ),
    GetPage(
      name: securityScreen,
      page: () => SecurityScreen(),
      bindings: [
        SecurityBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
