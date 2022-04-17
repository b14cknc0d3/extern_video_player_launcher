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
}
