import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../indicators/base_circle_indicator.dart';
import '../models/image.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.image,
    this.cache = true,
    this.fit = BoxFit.cover,
    this.cacheKey,
    this.maxBytes,
    this.shape,
    this.border,
    this.borderRadius,
    this.cacheMaxAge,
    this.width,
    this.height,
    this.cacheWidth,
    this.cacheHeight,
    this.placeholder,
    super.key,
  });

  static String? cacheKeyFromImage(ImageVm image) {
    final vm = image;

    if (vm is RemoteImageVm && vm.url != null) {
      final uri = Uri.parse(vm.url!);
      final key = keyToMd5(uri.path);

      return key;
    }

    return null;
  }

  final ImageVm image;
  final bool cache;
  final BoxFit fit;
  final int? maxBytes;
  final String? cacheKey;
  final BoxShape? shape;
  final Border? border;
  final BorderRadius? borderRadius;
  final Duration? cacheMaxAge;
  final double? width;
  final double? height;
  final int? cacheWidth;
  final int? cacheHeight;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    final placeholderWidget = placeholder ??
        SizedBox(
          height: height,
          width: width,
          child: Icon(
            Icons.person,
            size: height,
          ),
        );

    final model = image;

    switch (model) {
      case RemoteImageVm(url: final url) when url != null:
        return ExtendedImage.network(
          url,
          cacheKey: cacheKey,
          width: width,
          clearMemoryCacheWhenDispose: true,
          height: height,
          cacheWidth: cacheWidth,
          cacheHeight: cacheHeight,
          cacheMaxAge: cacheMaxAge,
          handleLoadingProgress: true,
          maxBytes: maxBytes,
          border: border,
          cache: cache,
          borderRadius: borderRadius,
          shape: shape,
          fit: fit,
          loadStateChanged: (state) => _handleLoadStateChanged(
            state,
            placeholderWidget,
          ),
        );
      case LocalImageVm(path: final path) when path != null:
        return ExtendedImage.file(
          File(path),
          width: width,
          height: height,
          maxBytes: maxBytes,
          clearMemoryCacheWhenDispose: true,
          border: border,
          shape: shape,
          borderRadius: borderRadius,
          cacheWidth: cacheWidth,
          cacheHeight: cacheHeight,
          fit: fit,
        );
      case _:
        return placeholderWidget;
    }
  }

  Widget? _handleLoadStateChanged(
    ExtendedImageState state,
    Widget placeholder,
  ) {
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        return Stack(
          fit: StackFit.expand,
          children: [
            placeholder,
            Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: BaseCircleIndicator(
                  strokeWidth: 3,
                  value: _progress(state.loadingProgress),
                ),
              ),
            ),
          ],
        );
      case LoadState.completed:
        return ExtendedRawImage(
          image: state.extendedImageInfo?.image,
          fit: fit,
          width: width,
          height: height,
        );
      case LoadState.failed:
        return placeholder;
    }
  }

  double? _progress(ImageChunkEvent? event) {
    final expectedTotalBytes = event?.expectedTotalBytes ?? 0;
    final cumulativeBytesLoaded = event?.cumulativeBytesLoaded ?? 0;
    final progress = cumulativeBytesLoaded / expectedTotalBytes;

    return progress.isNaN || progress.isInfinite ? null : progress;
  }
}
