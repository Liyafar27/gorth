/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage a1 = AssetGenImage('assets/1.png');
  static const AssetGenImage a10 = AssetGenImage('assets/10.jpeg');
  static const AssetGenImage a11 = AssetGenImage('assets/11.jpeg');
  static const AssetGenImage a12 = AssetGenImage('assets/12.jpeg');
  static const AssetGenImage a13 = AssetGenImage('assets/13.jpeg');
  static const AssetGenImage a14 = AssetGenImage('assets/14.jpeg');
  static const AssetGenImage a15 = AssetGenImage('assets/15.jpeg');
  static const AssetGenImage a16 = AssetGenImage('assets/16.jpeg');
  static const AssetGenImage a17 = AssetGenImage('assets/17.jpeg');
  static const AssetGenImage a18 = AssetGenImage('assets/18.jpeg');
  static const AssetGenImage a19 = AssetGenImage('assets/19.jpeg');
  static const String a1v = 'assets/1v.MP4';
  static const AssetGenImage a2 = AssetGenImage('assets/2.jpeg');
  static const AssetGenImage a20 = AssetGenImage('assets/20.jpeg');
  static const AssetGenImage a21 = AssetGenImage('assets/21.jpeg');
  static const AssetGenImage a22 = AssetGenImage('assets/22.jpeg');
  static const AssetGenImage a23 = AssetGenImage('assets/23.jpeg');
  static const AssetGenImage a24 = AssetGenImage('assets/24.jpeg');
  static const AssetGenImage a25 = AssetGenImage('assets/25.jpeg');
  static const AssetGenImage a26 = AssetGenImage('assets/26.jpeg');
  static const AssetGenImage a27 = AssetGenImage('assets/27.jpeg');
  static const AssetGenImage a28 = AssetGenImage('assets/28.jpeg');
  static const AssetGenImage a29 = AssetGenImage('assets/29.jpeg');
  static const String a2v = 'assets/2v.MP4';
  static const AssetGenImage a3 = AssetGenImage('assets/3.jpeg');
  static const AssetGenImage a30 = AssetGenImage('assets/30.jpeg');
  static const AssetGenImage a31 = AssetGenImage('assets/31.jpeg');
  static const AssetGenImage a32 = AssetGenImage('assets/32.jpeg');
  static const AssetGenImage a33 = AssetGenImage('assets/33.jpeg');
  static const AssetGenImage a34 = AssetGenImage('assets/34.jpeg');
  static const AssetGenImage a35 = AssetGenImage('assets/35.jpeg');
  static const AssetGenImage a36 = AssetGenImage('assets/36.jpeg');
  static const AssetGenImage a37 = AssetGenImage('assets/37.jpeg');
  static const AssetGenImage a38 = AssetGenImage('assets/38.jpeg');
  static const AssetGenImage a39 = AssetGenImage('assets/39.jpeg');
  static const String a3v = 'assets/3v.MP4';
  static const AssetGenImage a40 = AssetGenImage('assets/40.jpeg');
  static const AssetGenImage a41 = AssetGenImage('assets/41.jpeg');
  static const AssetGenImage a42 = AssetGenImage('assets/42.jpeg');
  static const AssetGenImage a43 = AssetGenImage('assets/43.jpeg');
  static const AssetGenImage a46 = AssetGenImage('assets/46.jpeg');
  static const AssetGenImage a47 = AssetGenImage('assets/47.jpeg');
  static const AssetGenImage a48 = AssetGenImage('assets/48.jpeg');
  static const AssetGenImage a49 = AssetGenImage('assets/49.jpeg');
  static const AssetGenImage a5 = AssetGenImage('assets/5.jpeg');
  static const AssetGenImage a50 = AssetGenImage('assets/50.jpeg');
  static const AssetGenImage a51 = AssetGenImage('assets/51.jpeg');
  static const AssetGenImage a52 = AssetGenImage('assets/52.jpeg');
  static const AssetGenImage a53 = AssetGenImage('assets/53.jpeg');
  static const AssetGenImage a54 = AssetGenImage('assets/54.jpeg');
  static const AssetGenImage a55 = AssetGenImage('assets/55.jpeg');
  static const AssetGenImage a6 = AssetGenImage('assets/6.jpeg');
  static const AssetGenImage a7 = AssetGenImage('assets/7.jpeg');
  static const AssetGenImage a8 = AssetGenImage('assets/8.jpeg');
  static const AssetGenImage a9 = AssetGenImage('assets/9.jpeg');
  static const AssetGenImage f1 = AssetGenImage('assets/f1.png');
  static const AssetGenImage f2 = AssetGenImage('assets/f2.png');
  static const AssetGenImage f3 = AssetGenImage('assets/f3.png');
  static const AssetGenImage f4 = AssetGenImage('assets/f4.png');
  static const AssetGenImage f5 = AssetGenImage('assets/f5.png');
  static const AssetGenImage f6 = AssetGenImage('assets/f6.png');
  static const String tg = 'assets/tg.svg';
  static const String x = 'assets/x.svg';

  /// List of all assets
  static List<dynamic> get values => [
    a1,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15,
    a16,
    a17,
    a18,
    a19,
    a1v,
    a2,
    a20,
    a21,
    a22,
    a23,
    a24,
    a25,
    a26,
    a27,
    a28,
    a29,
    a2v,
    a3,
    a30,
    a31,
    a32,
    a33,
    a34,
    a35,
    a36,
    a37,
    a38,
    a39,
    a3v,
    a40,
    a41,
    a42,
    a43,
    a46,
    a47,
    a48,
    a49,
    a5,
    a50,
    a51,
    a52,
    a53,
    a54,
    a55,
    a6,
    a7,
    a8,
    a9,
    f1,
    f2,
    f3,
    f4,
    f5,
    f6,
    tg,
    x,
  ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
