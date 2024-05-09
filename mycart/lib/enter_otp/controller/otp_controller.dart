
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mycart/enter_otp/models/otp_model.dart';


class OtpController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<Otp_model> Otp_modelObj = Otp_model().obs;

  //Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('255').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
