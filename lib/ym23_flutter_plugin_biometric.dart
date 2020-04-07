import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ym23_flutter_plugin_biometric/ym_colors.dart';

class Ym23FlutterPluginBiometric {
  static const MethodChannel _channel =
      const MethodChannel('ym23_flutter_plugin_biometric');

  @Deprecated("no mean")
  static Future<String> get platformVersion async {
    final String version = "Android ym232820 by liaction";
    return version;
  }

  ///
  /// 是否停止继续后续操作
  /// return [true|false]
  ///
  static Future<bool> shouldGoBack() async => true;

  ///
  /// 启动测试
  ///
  static Future<Void> ym23FingerAndFace() {
    return _channel.invokeMethod("ym23FingerAndFace");
  }

  ///
  /// 指纹验证
  ///
  static Future<Map> ym23FingerValid() {
    return _channel.invokeMethod("ym23FingerValid");
  }

  ///
  /// 是否注册过
  ///
  static Future<Map> ym23HaveFaceRegisterWithName({String name}) {
    return _channel
        .invokeMethod("ym23HaveFaceRegisterWithName", {"name": name});
  }

  ///
  /// 是否支持生物验证
  ///
  static Future<Map> ym23CheckSupportFingerOrFace() {
    return _channel.invokeMethod("ym23CheckSupportFingerOrFace");
  }

  ///
  /// 人脸识别验证注册
  ///
  static Future<Map> ym23RegisterAndValidFace(
      {bool register = true, String name}) {
    return _channel.invokeMethod(
        "ym23RegisterAndValidFace", {"register": register, "name": name});
  }

  ///
  /// 指纹验证
  ///
  static Future<bool> ym23ShowFingerValidDialog({
    BuildContext context,
    bool dark = false,
    Color errorColor = ymAppRedColor,
    Color rightColor = ymAppBarColor,
  }) async {
    return false;
  }
}
