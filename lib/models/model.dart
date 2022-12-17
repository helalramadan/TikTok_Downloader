class AppModel {
  int? code;
  String? msg;
  double? processedTime;
  DataModel? data;

  AppModel({this.code, this.msg, this.processedTime, this.data});

  AppModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    processedTime = json['processed_time'];
    data = json['data'] != null ? new DataModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = code;
    data['msg'] = msg;
    data['processed_time'] = processedTime;
    if (this.data != null) {
      data['data'] = this.data!.toMap();
    }
    return data;
  }
}

class DataModel {
  String? awemeId;
  String? id;
  String? region;
  String? title;
  String? cover;
  String? originCover;
  int? duration;
  String? play;
  String? wmplay;
  String? music;
  MusicInfo? musicInfo;
  int? playCount;
  int? diggCount;
  int? commentCount;
  int? shareCount;
  int? downloadCount;
  int? createTime;
  AuthorModel? author;

  DataModel(
      {this.awemeId,
        this.id,
        this.region,
        this.title,
        this.cover,
        this.originCover,
        this.duration,
        this.play,
        this.wmplay,
        this.music,
        this.musicInfo,
        this.playCount,
        this.diggCount,
        this.commentCount,
        this.shareCount,
        this.downloadCount,
        this.createTime,
        this.author});

  DataModel.fromJson(Map<String, dynamic> json) {
    awemeId = json['aweme_id'];
    id = json['id'];
    region = json['region'];
    title = json['title'];
    cover = json['cover'];
    originCover = json['origin_cover'];
    duration = json['duration'];
    play = json['play'];
    wmplay = json['wmplay'];
    music = json['music'];
    musicInfo = json['music_info'] != null
        ? new MusicInfo.fromJson(json['music_info'])
        : null;
    playCount = json['play_count'];
    diggCount = json['digg_count'];
    commentCount = json['comment_count'];
    shareCount = json['share_count'];
    downloadCount = json['download_count'];
    createTime = json['create_time'];
    author =
    json['author'] != null ? new AuthorModel.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aweme_id'] = awemeId;
    data['id'] = id;
    data['region'] = region;
    data['title'] = title;
    data['cover'] = cover;
    data['origin_cover'] = originCover;
    data['duration'] = duration;
    data['play'] = play;
    data['wmplay'] = wmplay;
    data['music'] = music;
    if (musicInfo != null) {
      data['music_info'] = musicInfo!.toMap();
    }
    data['play_count'] = playCount;
    data['digg_count'] = diggCount;
    data['comment_count'] = commentCount;
    data['share_count'] = shareCount;
    data['download_count'] = downloadCount;
    data['create_time'] = createTime;
    if (author != null) {
      data['author'] = author!.toMap();
    }
    return data;
  }
}

class MusicInfo {
  String? id;
  String? title;
  String? play;
  String? cover;
  String? author;
  bool? original;
  int? duration;
  String? album;

  MusicInfo(
      {this.id,
        this.title,
        this.play,
        this.cover,
        this.author,
        this.original,
        this.duration,
        this.album});

  MusicInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    play = json['play'];
    cover = json['cover'];
    author = json['author'];
    original = json['original'];
    duration = json['duration'];
    album = json['album'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['play'] = play;
    data['cover'] = cover;
    data['author'] = author;
    data['original'] = original;
    data['duration'] = duration;
    data['album'] = album;
    return data;
  }
}

class AuthorModel {
  String? id;
  String? uniqueId;
  String? nickname;
  String? avatar;

  AuthorModel({this.id, this.uniqueId, this.nickname, this.avatar});

  AuthorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueId = json['unique_id'];
    nickname = json['nickname'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['unique_id'] = uniqueId;
    data['nickname'] = nickname;
    data['avatar'] = avatar;
    return data;
  }
}
