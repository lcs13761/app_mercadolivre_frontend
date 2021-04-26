import 'package:get/get.dart';

import 'package:facebook_app/app/modules/Bookmarks/bookmarks_binding.dart';
import 'package:facebook_app/app/modules/Bookmarks/bookmarks_view.dart';
import 'package:facebook_app/app/modules/Credit_Market/credit_market_binding.dart';
import 'package:facebook_app/app/modules/Credit_Market/credit_market_view.dart';
import 'package:facebook_app/app/modules/Offer_of_the_day/offer_of_the_day_binding.dart';
import 'package:facebook_app/app/modules/Offer_of_the_day/offer_of_the_day_view.dart';
import 'package:facebook_app/app/modules/about/about_binding.dart';
import 'package:facebook_app/app/modules/about/about_view.dart';
import 'package:facebook_app/app/modules/abstract/abstract_binding.dart';
import 'package:facebook_app/app/modules/abstract/abstract_view.dart';
import 'package:facebook_app/app/modules/category/category_binding.dart';
import 'package:facebook_app/app/modules/category/category_view.dart';
import 'package:facebook_app/app/modules/fashion/fashion_binding.dart';
import 'package:facebook_app/app/modules/fashion/fashion_view.dart';
import 'package:facebook_app/app/modules/help/help_binding.dart';
import 'package:facebook_app/app/modules/help/help_view.dart';
import 'package:facebook_app/app/modules/historic/historic_binding.dart';
import 'package:facebook_app/app/modules/historic/historic_view.dart';
import 'package:facebook_app/app/modules/home/home_binding.dart';
import 'package:facebook_app/app/modules/home/home_view.dart';
import 'package:facebook_app/app/modules/login/login_binding.dart';
import 'package:facebook_app/app/modules/login/login_view.dart';
import 'package:facebook_app/app/modules/my_account/my_account_binding.dart';
import 'package:facebook_app/app/modules/my_account/my_account_view.dart';
import 'package:facebook_app/app/modules/my_shopping/my_shopping_binding.dart';
import 'package:facebook_app/app/modules/my_shopping/my_shopping_view.dart';
import 'package:facebook_app/app/modules/notifications/notifications_binding.dart';
import 'package:facebook_app/app/modules/notifications/notifications_view.dart';
import 'package:facebook_app/app/modules/official_stores/official_stores_binding.dart';
import 'package:facebook_app/app/modules/official_stores/official_stores_view.dart';
import 'package:facebook_app/app/modules/register/register_binding.dart';
import 'package:facebook_app/app/modules/register/register_view.dart';
import 'package:facebook_app/app/modules/search/search_binding.dart';
import 'package:facebook_app/app/modules/search/search_view.dart';
import 'package:facebook_app/app/modules/sell/sell_binding.dart';
import 'package:facebook_app/app/modules/sell/sell_view.dart';
import 'package:facebook_app/app/modules/splash/splash_binding.dart';
import 'package:facebook_app/app/modules/splash/splash_view.dart';
import 'package:facebook_app/app/modules/subscriptions/subscriptions_binding.dart';
import 'package:facebook_app/app/modules/subscriptions/subscriptions_view.dart';
import 'package:facebook_app/app/modules/supermarket/supermarket_binding.dart';
import 'package:facebook_app/app/modules/supermarket/supermarket_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.MY_SHOPPING,
      page: () => MyShoppingView(),
      binding: MyShoppingBinding(),
    ),
    GetPage(
      name: _Paths.HISTORIC,
      page: () => HistoricView(),
      binding: HistoricBinding(),
    ),
    GetPage(
      name: _Paths.MY_ACCOUNT,
      page: () => MyAccountView(),
      binding: MyAccountBinding(),
    ),
    GetPage(
      name: _Paths.ABSTRACT,
      page: () => AbstractView(),
      binding: AbstractBinding(),
    ),
    GetPage(
      name: _Paths.SELL,
      page: () => SellView(),
      binding: SellBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.SUPERMARKET,
      page: () => SupermarketView(),
      binding: SupermarketBinding(),
    ),
    GetPage(
      name: _Paths.FASHION,
      page: () => FashionView(),
      binding: FashionBinding(),
    ),
    GetPage(
      name: _Paths.OFFICIAL_STORES,
      page: () => OfficialStoresView(),
      binding: OfficialStoresBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARKS,
      page: () => BookmarksView(),
      binding: BookmarksBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_OF_THE_DAY,
      page: () => OfferOfTheDayView(),
      binding: OfferOfTheDayBinding(),
    ),
    GetPage(
      name: _Paths.CREDIT_MARKET,
      page: () => CreditMarketView(),
      binding: CreditMarketBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTIONS,
      page: () => SubscriptionsView(),
      binding: SubscriptionsBinding(),
    ),
  ];
}
