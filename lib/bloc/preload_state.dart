part of 'preload_bloc.dart';

@freezed
class PreloadState with _$PreloadState {
  const factory PreloadState({
    required List<String> urls,
    required Map<int, VideoPlayerController> controllers,
    required int focusedIndex,
  }) = _PreloadState;

  factory PreloadState.initial() => PreloadState(
        focusedIndex: 0,
        urls: const [
    //       'https://cdn.videvo.net/videvo_files/video/free/2019-11/large_watermarked/190301_1_25_11_preview.mp4',
    // 'https://media.istockphoto.com/videos/extreme-close-up-of-lions-mating-facing-camera-video-id1288336144',
    // 'https://cdn.videvo.net/videvo_files/video/premium/video0037/large_watermarked/flamingo32_preview.mp4',
    // 'https://cdn.videvo.net/videvo_files/video/premium/video0037/large_watermarked/flamingo33_preview.mp4',
    // 'https://cdn.videvo.net/videvo_files/video/premium/video0040/large_watermarked/storks00_preview.mp4',
    // 'https://cdn.videvo.net/videvo_files/video/premium/video0046/large_watermarked/360_360-0148_preview.mp4',
    // 'https://cdn.videvo.net/videvo_files/video/premium/video0390/large_watermarked/903_903-0457_preview.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4#1',
          'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
          'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
          'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
     ],
        controllers: {},
      );
}
