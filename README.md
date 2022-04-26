<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A plugin that can lauch video url with Mx Player and VLC player

## Features
<!-- markdownlint-disable MD033 -->
1. [Example Vimeo](https://vimeo.com/700168951)
<!-- markdownlint-enable MD033 -->


## Getting started

if you want to launch video url with mxplayer or vlcplayer ,use it
for more information plz check on github repo
## Usage



```dart
//launch mx
 ExternalVideoPlayerLauncher.launchMxPlayer(
                  videoMap["sources"][0], MIME.applicationMp4, {
                "title": videoMap["title"],
              });

//launch vlc
 ExternalVideoPlayerLauncher.launchVlcPlayer(
                  videoMap["sources"][0], MIME.applicationXMpegURL, {
                "title": videoMap["title"],
              });

// launch with xplayer
  ExternalVideoPlayerLauncher.launchXplayer(
                  videoMap["sources"][0], MIME.applicationXMpegURL, {
                "title": videoMap["title"],
              });
// launc onlinemediaplayer
   ExternalVideoPlayerLauncher.launchOnlineMediaPlayer(
                  videoMap["title"], videoMap["sources"][0], true, "");

// open with avaliable player
  ExternalVideoPlayerLauncher.launchOtherPlayer(
                  videoMap["sources"][0], MIME.applicationXMpegURL, {
                "title": videoMap["title"],
              });


```

## Additional information

If you wan't to add other player feel free to add and submit pull request or you can add intent guide of player to issue 
