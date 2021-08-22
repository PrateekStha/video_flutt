import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/preload_bloc.dart';
import 'video_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PreloadBloc()..add(PreloadEvent.initialize()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: VideoPage(),
      ),
    );
  }
}
