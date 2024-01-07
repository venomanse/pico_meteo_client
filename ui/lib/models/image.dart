import 'package:equatable/equatable.dart';

abstract class ImageVm extends Equatable {
  const ImageVm();

  bool get isValid;
}

final class LocalImageVm extends ImageVm {
  const LocalImageVm({
    this.path,
  });

  final String? path;

  @override
  bool get isValid => path != null;

  @override
  List<Object?> get props => [path];
}

final class RemoteImageVm extends ImageVm {
  const RemoteImageVm({this.url});

  final String? url;

  @override
  bool get isValid => url != null;

  @override
  List<Object?> get props => [url];
}
