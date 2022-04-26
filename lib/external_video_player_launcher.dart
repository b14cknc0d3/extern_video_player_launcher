library external_video_player_launcher;

export 'package:external_video_player_launcher/src/mime.dart';
import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:external_video_player_launcher/src/mime.dart';

class ExternalVideoPlayerLauncher {
  /// `Launch Mx Player Ad`
  static launchMxPlayer(String url, String? mime, Map<String, dynamic>? args) {
    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        package: 'com.mxtech.videoplayer.ad',
        type: mime ?? MIME.applicationXMpegURL,
        action: 'action_view',
        data: Uri.parse(url).toString(),

        //TODO test this
        arguments: args,
        flags: <int>[
          Flag.FLAG_ACTIVITY_NEW_TASK,
          Flag.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
        ],
      );
      intent.launch();
    }
  }

  /// *launchVlcPlayer*
  /// *ExtraArgs*
  ///"subtitles_location" 	String 	Path of a subtitles file
  /// "title" 	String 	Title you want to display
  /// "from_start" 	boolean 	Force playback from the beginning
  /// "position" 	int/long 	Set position to start playback, in milliseconds
  /// "extra_duration" 	long 	Media duration
  static launchVlcPlayer(String url, String? mime, Map<String, dynamic>? args) {
    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        package: 'org.videolan.vlc',
        type: mime ?? MIME.applicationXMpegURL,
        action: 'action_view',
        data: Uri.parse(url).toString(),

        //TODO test this
        arguments: args,
        flags: <int>[
          Flag.FLAG_ACTIVITY_NEW_TASK,
          Flag.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
        ],
      );

      intent.launch();
    }
  }

  /// *launch Video Player All Format*

  static launchXplayer(String url, String? mime, Map<String, dynamic>? args) {
    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        package: 'video.player.videoplayer',
        type: mime ?? MIME.applicationXMpegURL,
        action: 'action_view',
        data: Uri.parse(url).toString(),

        //TODO test this
        arguments: args,
        flags: <int>[
          Flag.FLAG_ACTIVITY_NEW_TASK,
          Flag.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
        ],
      );

      intent.launch();
    }
  }

  /// *show all available player*
  /// *If fail to player on someplayer try to change mime*
  static launchOtherPlayer(
      String url, String? mine, Map<String, dynamic>? args) {
    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        type: mine ?? MIME.applicationXMpegURL,
        action: 'action_view',
        data: Uri.parse(url).toString(),

        //TODO test this
        arguments: args,
        flags: <int>[
          Flag.FLAG_ACTIVITY_NEW_TASK,
          Flag.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
        ],
      );
      intent.launch();
    }
  }

  /// title of the movie
  /// url of the movie
  /// [isLive] is live stream [true : false]
  /// license of the app
  static launchOnlineMediaPlayer(
      String title, String url, bool isLive, String? license) {
    if (Platform.isAndroid) {
      try {
        final intent = AndroidIntent(
          package: 'com.mediaplay.player',
          type: MIME.applicationXMpegURL,
          action: 'action_view',
          data: Uri.parse(url).toString(),
          arguments: {
            'title': title,
            'isLive': isLive ? 1 : 0,
            'license': license,
          },
          flags: <int>[
            Flag.FLAG_ACTIVITY_NEW_TASK,
            Flag.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
          ],
        );
        intent.launch();
      } catch (e) {
        throw Exception(e);
      }
    }
  }
}
