import 'package:flutter_application_5/app/modules/connectivity/controller_connectivity/controller_connectivity.dart';
import 'package:flutter_application_5/app/modules/on_boarding/controller/onboarding_controller.dart';
import 'package:flutter_application_5/app/widgets/block_button_widget.dart';
import 'package:flutter_application_5/app/widgets/ui_function.dart';
import 'package:fluttertoast/fluttertoast.dart';
 
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  final co = Get.find<ConnetivityController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
      
           Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                          child: Image.asset("asset/img/on_boarding.png")),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: Get.width,
                      child: Center(
                        child: Text(
                          "Find Your Perfect DeVLoper".tr,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Get.textTheme.headline2?.merge(TextStyle(
                            fontSize: 26,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Text(
                        "Easy way to make Apps".tr,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Get.textTheme.caption?.merge(TextStyle(
                          fontSize: 16,
                        )),
                      )),
                    ),
                  ],
                )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: Get.width,
                  child: BlockButtonWidget(
                      color: Get.theme.primaryColor,
                      text: Text(
                        "Log In".tr,
                        style: Get.textTheme.button,
                      ),
                      onPressed: () {
                
                        try{
                         
                            UiFunction.SuccessSnackBar(message: co.connectionStatus.value.toString()).show();
                           
                            
                        }
                        catch(e)
                        {
                          print(e.toString());
                        }

                          


                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: Get.width,
                  child: BlockButtonWidget(
                      color: Get.theme.accentColor,
                      text: Text(
                        'Sign In'.tr,
                        style: Get.textTheme.button
                            ?.merge(TextStyle(color: Colors.white)),
                      ),
                      onPressed: () {
    
                        
                        // Get.offAndToNamed(Routes.REGISTER);
                      }),
                ),
                TextButton(
                  onPressed: () {
                    // Get.offAllNamed(Routes.TABS);
                  },
                  child: Text("Skip".tr),
                ).paddingOnly(bottom: 10),
              ],
            )
    
    );
  }
}
 