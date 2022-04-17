class MxPlayerArgsModel {
  /// [Type] : byte

  /// Values :

  /// [1] - HW decoder

  /// [2] - SW decoder

  /// [4] - HW+ Decoder
  int? decodeMode;

  /// Set [video] [visibility]. This extra will be ignored if user makes
  /// their own choice on Playback screen > Menu > Display > Video.
  bool? video;

  ///[Type]: boolean

  /// If set true, the entire video list will be played regardless 'Back to list' option on Settings > Player.
  bool? videoListIsExplicit;

  /// [Type] : Parcelable array (android.net.Uri[])
  /// Values : Video playlist including URI provided on Data.

  List? videoList;

  List<String>? videoListName;
  List<String>? videoListSize;
  List<String>? videoListFilename;
  List<String>? videoListHashOpenSubtitles;

  ///Type: Parcelable array (android.net.Uri[])
  ///Values: subtitle list used for given video Uri (in the data field)
  List? subs;

  List<String>? subsName;
  List<String>? subsFilename;
  List<String>? subsEnable;

  ///Type: String
  ///Values: Title text.
  String? title;

  ///Type: long
  ///
  /// Values: Size of the media file in bytes.
  ///
  /// Providing size may improve the accuracy of subtitle finding for remote/streaming media. Not required for local files.
  double? size;

  /// Type: String
  /// value: Filename of the media.
  /// Providing filename may improve the accuracy of subtitle finding for remote/streaming media. Not required for local files or filename can be retrieved from video URI.
  String? filename;

  ///Values: resume position in milliseconds. presence of this extra forces to resume given position not giving user a chance to play from the beginning.
  int? position;

  ///Values: set true to receive resulting intent through Activity.onActivityResult() call.
  bool? returnResult;

  ///Values: Headers to be sent along with the server request for videos and subtitles.
  ///(Before 1.8.4, this extra will not be used for downloading subtitles.)
  ///Key and value should appear in turn.
  ///e.g)
  ///```String[] headers = {
  ///         "User-Agent", "Mozilla compatible/1.0",
  ///         "Authorization", "(Access Token)",
  ///         "Extra Key", "(Extra Value)" };```
  Map<String, dynamic>? headers;

  /// If set to true, video uri will not be displayed in the property dialog box.
  bool? secureUri;

  ///Value: Override video zoom setting.
  ///Available values are: **[Fit to screen=1, Stretch=0, Crop=3, 100%=2]**
  int? videoZoom;

  /// Override default DAR(display aspect ratio). Both extras should be provided together.
  double? darHorz, darVert;

  ///Override background play setting.
  bool? stickey;

  /// Values: One of following values;

  /// 0 - Landscape

  /// 8 - Reverse Landscape

  /// 6 - Auto rotation (Landscape)

  /// 1 - Portrait

  /// 9 - Reverse Portrait

  /// 7 - Auto rotation (Portrait)

  /// 10 - Auto rotation

  /// -1 - System default

  /// 99999 - Match video orientation

  /// Override screen orientation setting.
  int? orientation;

  /// 0 - Volume up/down (default)
  ///
  /// 1 - Load next/previous video.
  ///
  /// Override DPAD up/down key action.
  int? keyDpadUpDown;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['decode_mode'] = decodeMode;
    data['video'] = video;
    data['video_list_is_explicit'] = videoListIsExplicit;
    data['video_list'] = videoList;
    data['video_list.name'] = videoListName;
    data['video_list.size'] = videoListSize;
    data['video_list.filename'] = videoListFilename;
    data['video_list.hash.opensubtitles'] = videoListHashOpenSubtitles;
    data['subs'] = subs;
    data['subs.name'] = subsName;
    data['subs.filename'] = subsFilename;
    data['subs.enable'] = subsEnable;
    data['title'] = title;
    data['size'] = size;
    data['filename'] = filename;
    data['position'] = position;
    data['return_result'] = returnResult;
    data['headers'] = headers;
    data['secure_uri'] = secureUri;
    data['video_zoom'] = videoZoom;
    data['DAR_horz'] = darHorz;
    data['DAR_vert'] = darVert;
    data['sticky'] = stickey;
    data['orientation'] = orientation;
    data['key.dpad_up_down'] = keyDpadUpDown;

    return data;
  }
}
