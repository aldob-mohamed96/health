import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'app/modules/connectivity/bindings_connectivity/bindings_connectivity.dart';
import 'app/routes/app_pages.dart';
import 'app/services/global_serv.dart';
import 'app/services/settings_serv.dart';
import 'app/services/translation_serv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


 initServices() async {
  Get.log('starting services ...');
  await Get.putAsync(() => TranslationServ().init());
  await Get.putAsync(() => GlobalServ().init());

  await Get.putAsync(() => SettingServ().init());


  Get.log('All services started...');
}

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(GetMaterialApp(
    title: Get.find<SettingServ>().setting.value.appName!,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    
    initialBinding: ConnectivityBindings(),
    localizationsDelegates: [GlobalMaterialLocalizations.delegate],
    supportedLocales: Get.find<TranslationServ>().supportedLocales(),
    translationsKeys: Get.find<TranslationServ>().translations,
    locale: Get.find<SettingServ>().getLocale(),
    fallbackLocale: Get.find<TranslationServ>().fallbackLocale,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.cupertino,
    themeMode: Get.find<SettingServ>().getThemeMode(),
    theme: Get.find<SettingServ>().getLightTheme(),
    darkTheme: Get.find<SettingServ>().getDarkTheme(),
  ));
}
