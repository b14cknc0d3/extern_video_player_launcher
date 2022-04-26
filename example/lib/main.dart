import 'package:external_video_player_launcher/external_video_player_launcher.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> mediaJSON = [
    {
      "description":
          "Big Buck Bunny tells the story of a giant rabbit with a heart bigger than himself. When one sunny day three rodents rudely harass him, something snaps... and the rabbit ain't no bunny anymore! In the typical cartoon tradition he prepares the nasty rodents a comical revenge.\n\nLicensed under the Creative Commons Attribution license\nhttp://www.bigbuckbunny.org",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
      ],
      "subtitle": "By Blender Foundation",
      "thumb": "images/BigBuckBunny.jpg",
      "title": "Big Buck Bunny"
    },
    {
      "description": "The first Blender Open Movie from 2006",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
      ],
      "subtitle": "By Blender Foundation",
      "thumb": "images/ElephantsDream.jpg",
      "title": "Elephant Dream"
    },
    {
      "description":
          "HBO GO now works with Chromecast -- the easiest way to enjoy online video on your TV. For when you want to settle into your Iron Throne to watch the latest episodes. For \$35.\nLearn how to use Chromecast with HBO GO and more at google.com/chromecast.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
      ],
      "subtitle": "By Google",
      "thumb": "images/ForBiggerBlazes.jpg",
      "title": "For Bigger Blazes"
    },
    {
      "description":
          "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when Batman's escapes aren't quite big enough. For \$35. Learn how to use Chromecast with Google Play Movies and more at google.com/chromecast.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
      ],
      "subtitle": "By Google",
      "thumb": "images/ForBiggerEscapes.jpg",
      "title": "For Bigger Escape"
    },
    {
      "description":
          "Introducing Chromecast. The easiest way to enjoy online video and music on your TV. For \$35.  Find out more at google.com/chromecast.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
      ],
      "subtitle": "By Google",
      "thumb": "images/ForBiggerFun.jpg",
      "title": "For Bigger Fun"
    },
    {
      "description":
          "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for the times that call for bigger joyrides. For \$35. Learn how to use Chromecast with YouTube and more at google.com/chromecast.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
      ],
      "subtitle": "By Google",
      "thumb": "images/ForBiggerJoyrides.jpg",
      "title": "For Bigger Joyrides"
    },
    {
      "description":
          "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when you want to make Buster's big meltdowns even bigger. For \$35. Learn how to use Chromecast with Netflix and more at google.com/chromecast.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
      ],
      "subtitle": "By Google",
      "thumb": "images/ForBiggerMeltdowns.jpg",
      "title": "For Bigger Meltdowns"
    },
    {
      "description":
          "Sintel is an independently produced short film, initiated by the Blender Foundation as a means to further improve and validate the free/open source 3D creation suite Blender. With initial funding provided by 1000s of donations via the internet community, it has again proven to be a viable development model for both open 3D technology as for independent animation film.\nThis 15 minute film has been realized in the studio of the Amsterdam Blender Institute, by an international team of artists and developers. In addition to that, several crucial technical and creative targets have been realized online, by developers and artists and teams all over the world.\nwww.sintel.org",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
      ],
      "subtitle": "By Blender Foundation",
      "thumb": "images/Sintel.jpg",
      "title": "Sintel"
    },
    {
      "description":
          "Smoking Tire takes the all-new Subaru Outback to the highest point we can find in hopes our customer-appreciation Balloon Launch will get some free T-shirts into the hands of our viewers.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/SubaruOutbackOnStreetAndDirt.jpg",
      "title": "Subaru Outback On Street And Dirt"
    },
    {
      "description":
          "Tears of Steel was realized with crowd-funding by users of the open source 3D creation tool Blender. Target was to improve and test a complete open and free pipeline for visual effects in film - and to make a compelling sci-fi film in Amsterdam, the Netherlands.  The film itself, and all raw material used for making it, have been released under the Creatieve Commons 3.0 Attribution license. Visit the tearsofsteel.org website to find out more about this, or to purchase the 4-DVD box with a lot of extras.  (CC) Blender Foundation - http://www.tearsofsteel.org",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"
      ],
      "subtitle": "By Blender Foundation",
      "thumb": "images/TearsOfSteel.jpg",
      "title": "Tears of Steel"
    },
    {
      "description":
          "The Smoking Tire heads out to Adams Motorsports Park in Riverside, CA to test the most requested car of 2010, the Volkswagen GTI. Will it beat the Mazdaspeed3's standard-setting lap time? Watch and see...",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/VolkswagenGTIReview.jpg",
      "title": "Volkswagen GTI Review"
    },
    {
      "description":
          "The Smoking Tire is going on the 2010 Bullrun Live Rally in a 2011 Shelby GT500, and posting a video from the road every single day! The only place to watch them is by subscribing to The Smoking Tire or watching at BlackMagicShine.com",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/WeAreGoingOnBullrun.jpg",
      "title": "We Are Going On Bullrun"
    },
    {
      "description":
          "The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
      "title": "What care can you get for a grand?"
    },
    {
      "description":
          "The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.",
      "sources": [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
      "title": "What care can you get for a grand?"
    },
    {
      "description":
          "The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.",
      "sources": [
        "http://sample.vodobox.net/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
      "title": "What care can you get for a grand?"
    },
    {
      "description":
          "The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.",
      "sources": [
        "http://nasatv-lh.akamaihd.net/i/NASA_101@319270/index_1000_av-p.m3u8?sd=10&rebase=on"
      ],
      "subtitle": "By Garage419",
      "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
      "title": "What care can you get for a grand?"
    },
    {
      "description":
          "The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far \$1,000 can go when looking for a car.",
      "sources": ["http://content.jwplatform.com/manifests/vM7nH0Kl.m3u8"],
      "subtitle": "By Garage419",
      "thumb": "images/WhatCarCanYouGetForAGrand.jpg",
      "title": "What care can you get for a grand?"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Press to launch URL',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              final _random = Random();
              var videoMap = mediaJSON[_random.nextInt(mediaJSON.length)];
              ExternalVideoPlayerLauncher.launchMxPlayer(
                  videoMap["sources"][0], MIME.applicationMp4, {
                "title": videoMap["title"],
              });
            },
            tooltip: 'Launch MXPLAYER',
            child: const Icon(Icons.play_arrow),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            backgroundColor: Colors.yellowAccent,
            onPressed: () {
              final _random = Random();
              var videoMap = mediaJSON[_random.nextInt(mediaJSON.length)];
              ExternalVideoPlayerLauncher.launchVlcPlayer(
                  videoMap["sources"][0], MIME.applicationXMpegURL, {
                "title": videoMap["title"],
              });
            },
            tooltip: 'Launch VLC',
            child: const Icon(
              Icons.play_arrow,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {
              final _random = Random();
              var videoMap = mediaJSON[_random.nextInt(mediaJSON.length)];
              ExternalVideoPlayerLauncher.launchXplayer(
                  videoMap["sources"][0], MIME.applicationXMpegURL, {
                "title": videoMap["title"],
              });
            },
            tooltip: 'Launch Xplayer',
            child: const Icon(
              Icons.play_arrow,
              color: Colors.yellow,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              final _random = Random();
              var videoMap = mediaJSON[_random.nextInt(mediaJSON.length)];
              ExternalVideoPlayerLauncher.launchOnlineMediaPlayer(
                  videoMap["title"], videoMap["sources"][0], true, "");
            },
            tooltip: 'Launch Xplayer',
            child: const Icon(
              Icons.play_arrow,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
