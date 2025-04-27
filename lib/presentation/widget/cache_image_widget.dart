import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunglydev_datn/common/util/extensions/widget_extension.dart';
import 'package:hunglydev_datn/presentation/widget/place_holder_widget.dart';
import 'package:lottie/lottie.dart';

class CachedImageWidget extends StatelessWidget {
  final String url;
  final double height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final String? placeHolderImage;
  final AlignmentGeometry? alignment;
  final bool usePlaceholderIfUrlEmpty;
  final bool circle;
  final double? radius;
  final Widget? child;

  const CachedImageWidget({
    super.key,
    required this.url,
    required this.height,
    this.width,
    this.fit,
    this.color,
    this.placeHolderImage,
    this.alignment = Alignment.center,
    this.radius,
    this.usePlaceholderIfUrlEmpty = true,
    this.circle = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return _buildPlaceholder();
    } else if (url.startsWith('http')) {
      if (url.toLowerCase().endsWith('.svg')) {
        return _buildSvgNetworkImage();
      } else if (url.toLowerCase().endsWith('.json')) {
        return _buildLottieNetworkImage();
      }
      return _buildCachedNetworkImage();
    } else {
      if (url.startsWith(r"assets/")) {
        if (url.toLowerCase().endsWith('.svg')) {
          return _buildSvgAssetImage();
        } else if (url.toLowerCase().endsWith('.json')) {
          return _buildLottieAssetImage();
        }
        return _buildAssetImage();
      } else {
        if (url.toLowerCase().endsWith('.svg')) {
          return _buildSvgFileImage();
        } else if (url.toLowerCase().endsWith('.json')) {
          return _buildLottieFileImage();
        }
        return _buildFileImage();
      }
    }
  }

  Widget _buildLottieNetworkImage() {
    return Lottie.network(
      url,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      errorBuilder: (context, error, stackTrace) {
        return _buildPlaceholder();
      },
      frameBuilder: (context, child, composition) {
        if (composition != null) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(radius ?? (circle ? (height / 2) : 0)),
            child: child,
          );
        } else {
          return _buildPlaceholder();
        }
      },
    );
  }

  Widget _buildLottieAssetImage() {
    return Lottie.asset(
      url,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      errorBuilder: (context, error, stackTrace) {
        return _buildPlaceholder();
      },
      frameBuilder: (context, child, composition) {
        if (composition != null) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(radius ?? (circle ? (height / 2) : 0)),
            child: child,
          );
        } else {
          return _buildPlaceholder();
        }
      },
    );
  }

  Widget _buildLottieFileImage() {
    return Lottie.file(
      File(url),
      fit: fit,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      errorBuilder: (context, error, stackTrace) {
        return _buildPlaceholder();
      },
      frameBuilder: (context, child, composition) {
        if (composition != null) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(radius ?? (circle ? (height / 2) : 0)),
            child: child,
          );
        } else {
          return _buildPlaceholder();
        }
      },
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      height: height,
      width: width ?? height,
      color: color ?? Colors.grey.withOpacity(0.1),
      alignment: alignment,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PlaceHolderWidget(
            height: height,
            width: width,
            alignment: alignment ?? Alignment.center,
          ).cornerRadiusWithClipRRect(
            radius ?? (circle ? (height / 2) : 0),
          ),
          child ?? const Offstage(),
        ],
      ),
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildCachedNetworkImage() {
    return CachedNetworkImage(
      placeholder: (_, __) => _buildPlaceholder(),
      imageUrl: url,
      height: height,
      width: width ?? height,
      fit: fit ?? BoxFit.cover,
      color: color,
      alignment: alignment as Alignment? ?? Alignment.center,
      errorWidget: (_, s, d) => _buildPlaceholder(),
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildSvgNetworkImage() {
    return SvgPicture.network(
      url,
      height: height,
      width: width ?? height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      alignment: alignment ?? Alignment.center,
      placeholderBuilder: (_) => _buildPlaceholder(),
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildAssetImage() {
    return Image.asset(
      url,
      height: height,
      width: width ?? height,
      fit: fit,
      color: color,
      alignment: alignment ?? Alignment.center,
      errorBuilder: (_, s, d) => _buildPlaceholder(),
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildSvgAssetImage() {
    return SvgPicture.asset(
      url,
      height: height,
      width: width ?? height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      alignment: alignment ?? Alignment.center,
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildFileImage() {
    return Image.file(
      File(url),
      height: height,
      width: width,
      fit: fit,
      color: color,
      alignment: alignment ?? Alignment.center,
      errorBuilder: (_, s, d) => _buildPlaceholder(),
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }

  Widget _buildSvgFileImage() {
    return SvgPicture.file(
      File(url),
      height: height,
      width: width ?? height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      alignment: alignment ?? Alignment.center,
    ).cornerRadiusWithClipRRect(
      radius ?? (circle ? (height / 2) : 0),
    );
  }
}
