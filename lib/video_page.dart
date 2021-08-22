import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import 'bloc/preload_bloc.dart';

class VideoPage extends StatelessWidget {
  const VideoPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<PreloadBloc, PreloadState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.urls.length,
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) => BlocProvider.of<PreloadBloc>(context)
                .add(PreloadEvent.onVideoIndexChanged(index)),
            itemBuilder: (context, index) {
              return 
             
                    SizedBox(child:Container(child:VideoPlayer(state.controllers[index]!)));
            },
          );
        },
      ),
    );
  }
}
