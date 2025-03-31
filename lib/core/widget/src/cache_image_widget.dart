part of '../widget.dart';

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
      }
      return _buildCachedNetworkImage();
    } else {
      if (url.startsWith(r"assets/")) {
        if (url.toLowerCase().endsWith('.svg')) {
          return _buildSvgAssetImage();
        }
        return _buildAssetImage();
      } else {
        if (url.toLowerCase().endsWith('.svg')) {
          return _buildSvgFileImage();
        }
        return _buildFileImage();
      }
    }
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
