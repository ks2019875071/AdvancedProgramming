import 'package:flutter/cupertino.dart';
import 'splash.dart';
import 'Navigator.dart';
import 'home.dart';
import 'game.dart';
import 'gameDir/rsp_game.dart';
import 'shop.dart';
import 'shopDir/food_shop.dart';
import 'shopDir/cloth_shop.dart';
import 'shopDir/soap_shop.dart';
import 'shopDir/toy_shop.dart';
import 'setting.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String navigation = '/navigation';
  static const String home = '/home';
  static const String game = '/game';
  static const String rspGame = '/rsp';
  static const String shop = '/shop';
  static const String foodShop = '/food';
  static const String clothShop = '/cloth';
  static const String soapShop = '/soap';
  static const String toyShop = '/toy';
  static const String setting = '/setting';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashRoute(),
    navigation: (BuildContext context) => Navigation(),
    home: (BuildContext context) => HomeRoute(),
    game: (BuildContext context) => GameRoute(),
    rspGame: (BuildContext context) => RSPGameRoute(),
    shop: (BuildContext context) => ShopRoute(),
    foodShop: (BuildContext context) => FoodShopRoute(),
    clothShop: (BuildContext context) => ClothShopRoute(),
    soapShop: (BuildContext context) => SoapShopRoute(),
    toyShop: (BuildContext context) => ToyShopRoute(),
    setting: (BuildContext context) => SettingRoute()
  };
}