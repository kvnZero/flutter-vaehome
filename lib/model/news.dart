import 'package:flutter_vaehome/ui/widget/MySwiper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';


@JsonSerializable()
class News extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'categoryId')
  String categoryId;

  @JsonKey(name: 'flag')
  String flag;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'poster')
  String poster;

  @JsonKey(name: 'pushTime')
  String pushTime;

  @JsonKey(name: 'photo')
  String photo;

  @JsonKey(name: 'addUserId')
  String addUserId;

  @JsonKey(name: 'addTime')
  String addTime;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'modifyUserId')
  String modifyUserId;

  @JsonKey(name: 'modifyTime')
  String modifyTime;

  @JsonKey(name: 'viewCount')
  String viewCount;

  @JsonKey(name: 'dingCount')
  int dingCount;

  @JsonKey(name: 'reviewCount')
  String reviewCount;

  @JsonKey(name: 'shareCount')
  String shareCount;

  @JsonKey(name: 'transgressCount')
  String transgressCount;

  @JsonKey(name: 'lastReviewTime')
  String lastReviewTime;

  @JsonKey(name: 'isReview')
  String isReview;

  @JsonKey(name: 'transgressStatus')
  String transgressStatus;

  @JsonKey(name: 'transgressUniCount')
  String transgressUniCount;

  @JsonKey(name: 'categoryInfo')
  CategoryInfo categoryInfo;

  @JsonKey(name: 'photoList')
  List<String> photoList;

  @JsonKey(name: 'addTimeDesc')
  String addTimeDesc;

  @JsonKey(name: 'pushTimeDesc')
  String pushTimeDesc;

  @JsonKey(name: 'addUserInfo')
  AddUserInfo addUserInfo;

  News(this.id,this.categoryId,this.flag,this.title,this.content,this.poster,this.pushTime,this.photo,this.addUserId,this.addTime,this.status,this.modifyUserId,this.modifyTime,this.viewCount,this.dingCount,this.reviewCount,this.shareCount,this.transgressCount,this.lastReviewTime,this.isReview,this.transgressStatus,this.transgressUniCount,this.categoryInfo,this.photoList,this.addTimeDesc,this.pushTimeDesc,this.addUserInfo,);

  factory News.fromJson(Map<String, dynamic> srcJson) => _$NewsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

}


@JsonSerializable()
class CategoryInfo extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'sort')
  String sort;

  CategoryInfo(this.id,this.name,this.pic,this.desc,this.sort,);

  factory CategoryInfo.fromJson(Map<String, dynamic> srcJson) => _$CategoryInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoryInfoToJson(this);

}


@JsonSerializable()
class AddUserInfo extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'avatar')
  String avatar;

  @JsonKey(name: 'sex')
  String sex;

  @JsonKey(name: 'sign')
  String sign;

  @JsonKey(name: 'userId')
  String userId;

  @JsonKey(name: 'age')
  int age;

  @JsonKey(name: 'identity')
  List<Identity> identity;

  @JsonKey(name: 'userVipStauts')
  bool userVipStauts;

  @JsonKey(name: 'medal')
  List<Medal> medal;

  @JsonKey(name: 'videoDuration')
  int videoDuration;

  AddUserInfo(this.name,this.avatar,this.sex,this.sign,this.userId,this.age,this.identity,this.userVipStauts,this.medal,this.videoDuration,);

  factory AddUserInfo.fromJson(Map<String, dynamic> srcJson) => _$AddUserInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AddUserInfoToJson(this);

}


@JsonSerializable()
class Identity extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'remark')
  String remark;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'addTime')
  String addTime;

  Identity(this.id,this.name,this.pic,this.remark,this.status,this.addTime,);

  factory Identity.fromJson(Map<String, dynamic> srcJson) => _$IdentityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$IdentityToJson(this);

}


@JsonSerializable()
class Medal extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'picNot')
  String picNot;

  @JsonKey(name: 'picSmall')
  String picSmall;

  @JsonKey(name: 'reqDesc')
  String reqDesc;

  @JsonKey(name: 'getTime')
  String getTime;

  @JsonKey(name: 'selected')
  bool selected;

  Medal(this.id,this.type,this.name,this.desc,this.picNot,this.picSmall,this.reqDesc,this.getTime,this.selected,);

  factory Medal.fromJson(Map<String, dynamic> srcJson) => _$MedalFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MedalToJson(this);

}
