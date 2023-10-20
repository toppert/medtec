import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setStatus(String value) {
    return _sharedPreferences!.setString('Status', value);
  }

  String getStatus() {
    try {
      return _sharedPreferences!.getString('Status') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setEmail(String value) {
   return _sharedPreferences!.setString('Email', value);
  }
  String getEmail() {
   try {
    return _sharedPreferences!.getString('Email') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setFName(String value) {
   return _sharedPreferences!.setString('FName', value);
  }

  String getFName() {
   try {
    return _sharedPreferences!.getString('FName') ?? '';
   } catch (e) {
    return '';
   }
  }
  Future<void> setLName(String value) {
   return _sharedPreferences!.setString('LName', value);
  }

  String getLName() {
   try {
    return _sharedPreferences!.getString('LName') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setPnumber(String value) {
   return _sharedPreferences!.setString('Pnumber', value);
  }

  String getPnumber() {
   try {
    return _sharedPreferences!.getString('Pnumber') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setUser(String value) {
   return _sharedPreferences!.setString('User', value);
  }

  String getUser() {
   try {
    return _sharedPreferences!.getString('User') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setActive(bool value) {
   return _sharedPreferences!.setBool('Active', value);
  }

  bool getActive() {
   try {
    return _sharedPreferences!.getBool('Active') ?? false;
   } catch (e) {
    return false;
   }
  }

  Future<void> setId(String value) {
   return _sharedPreferences!.setString('Id', value);
  }

  String getId() {
   try {
    return _sharedPreferences!.getString('Id') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setFname(String value) {
   return _sharedPreferences!.setString('Fname', value);
  }

  String getFname() {
   try {
    return _sharedPreferences!.getString('Fname') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setLname(String value) {
   return _sharedPreferences!.setString('Lname', value);
  }

  String getLname() {
   try {
    return _sharedPreferences!.getString('Lname') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setDelete(bool value) {
   return _sharedPreferences!.setBool('Delete', value);
  }

  bool getDelete() {
   try {
    return _sharedPreferences!.getBool('Delete') ?? false;
   } catch (e) {
    return false;
   }
  }

  Future<void> setPassword(String value) {
   return _sharedPreferences!.setString('password', value);
  }

  String getPassword() {
   try {
    return _sharedPreferences!.getString('password') ?? '';
   } catch (e) {
    return '';
   }
  }

  Future<void> setAToken(String value) {
    return _sharedPreferences!.setString('AToken', value);
  }

  String getAToken() {
    try {
      return _sharedPreferences!.getString('AToken') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setRtoken(String value) {
    return _sharedPreferences!.setString('Rtoken', value);
  }

  String getRtoken() {
    try {
      return _sharedPreferences!.getString('Rtoken') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMessage(String value) {
    return _sharedPreferences!.setString('Message', value);
  }

  String getMessage() {
    try {
      return _sharedPreferences!.getString('Message') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMassage(String value) {
    return _sharedPreferences!.setString('Massage', value);
  }

  // String getMassage() {
  //   try {
  //     return _sharedPreferences!.getString('Massage') ?? '';
  //   } catch (e) {
  //     return '';
  //   }
  // }
}
