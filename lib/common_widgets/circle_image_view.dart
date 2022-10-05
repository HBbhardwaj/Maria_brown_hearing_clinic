import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleImageView extends StatelessWidget {
  String url;
  String? placeholder;
  double? width, height;
  BoxFit? boxFit;
  Color? imageColor;

  CircleImageView({Key? key, required this.url,
    this.imageColor,
    this.width, this.height,
    this.boxFit,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: boxFit,
        color: imageColor!,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => Image.asset(placeholder!),
      ),
    );
  }
}
