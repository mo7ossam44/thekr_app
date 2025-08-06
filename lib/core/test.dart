// import 'package:flutter/material.dart';


// class StorybookApp extends StatelessWidget {
//   final _plugins = initializePlugins(
//     knobsSidePanel: true,
//     contentsSidePanel: true,
//     initialDeviceFrameData: DeviceFrameData(
//       device: Devices.ios.iPhone13ProMax,
//     ),
//   );

//   StorybookApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Storybook(
//       plugins: _plugins,
//       wrapperBuilder: (context, child) => MaterialApp(
//         navigatorKey: GlobalKey(),
//         theme: ThemeData.light(),
//         darkTheme: ThemeData.dark(),
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(body: Center(child: child)),
//       ),
//       initialStory: 'Default',
//       stories: [
//         Story(
//           name: 'Default',
//           builder: (context) => const PlayWithParametersStory(),
//         ),
//         Story(
//           name: 'Multiline to one line',
//           builder: (context) => const MultilineToOneLineStory(),
//         ),
//       ],
//     );
//   }
// }