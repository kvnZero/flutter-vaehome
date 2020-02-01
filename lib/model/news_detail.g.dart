// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetail _$NewsDetailFromJson(Map<String, dynamic> json) {
  return NewsDetail(
    json['id'] as String,
    json['categoryId'] as String,
    json['flag'] as String,
    json['title'] as String,
    json['content'] as String,
    json['poster'] as String,
    json['source'] as String,
    json['sourceUrl'] as String,
    json['pushTime'] as String,
    json['photo'] as String,
    json['addUserId'] as String,
    json['addTime'] as String,
    json['status'] as String,
    json['modifyUserId'] as String,
    json['modifyTime'] as String,
    json['viewCount'] as String,
    json['dingCount'] as int,
    json['reviewCount'] as String,
    json['shareCount'] as String,
    json['transgressCount'] as String,
    json['lastReviewTime'] as String,
    json['isReview'] as String,
    json['transgressStatus'] as String,
    json['transgressUniCount'] as String,
    json['categoryInfo'] == null
        ? null
        : CategoryInfo.fromJson(json['categoryInfo'] as Map<String, dynamic>),
    (json['photoList'] as List)?.map((e) => e as String)?.toList(),
    json['addUserInfo'] == null
        ? null
        : AddUserInfo.fromJson(json['addUserInfo'] as Map<String, dynamic>),
    json['addTimeDesc'] as String,
    json['pushTimeDesc'] as String,
    json['favoriteFlag'] as bool,
    json['userDingFlag'] as bool,
  );
}

Map<String, dynamic> _$NewsDetailToJson(NewsDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'flag': instance.flag,
      'title': instance.title,
      'content': instance.content,
      'poster': instance.poster,
      'source': instance.source,
      'sourceUrl': instance.sourceUrl,
      'pushTime': instance.pushTime,
      'photo': instance.photo,
      'addUserId': instance.addUserId,
      'addTime': instance.addTime,
      'status': instance.status,
      'modifyUserId': instance.modifyUserId,
      'modifyTime': instance.modifyTime,
      'viewCount': instance.viewCount,
      'dingCount': instance.dingCount,
      'reviewCount': instance.reviewCount,
      'shareCount': instance.shareCount,
      'transgressCount': instance.transgressCount,
      'lastReviewTime': instance.lastReviewTime,
      'isReview': instance.isReview,
      'transgressStatus': instance.transgressStatus,
      'transgressUniCount': instance.transgressUniCount,
      'categoryInfo': instance.categoryInfo,
      'photoList': instance.photoList,
      'addUserInfo': instance.addUserInfo,
      'addTimeDesc': instance.addTimeDesc,
      'pushTimeDesc': instance.pushTimeDesc,
      'favoriteFlag': instance.favoriteFlag,
      'userDingFlag': instance.userDingFlag,
    };

CategoryInfo _$CategoryInfoFromJson(Map<String, dynamic> json) {
  return CategoryInfo(
    json['id'] as String,
    json['name'] as String,
    json['pic'] as String,
    json['desc'] as String,
    json['sort'] as String,
  );
}

Map<String, dynamic> _$CategoryInfoToJson(CategoryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pic': instance.pic,
      'desc': instance.desc,
      'sort': instance.sort,
    };

AddUserInfo _$AddUserInfoFromJson(Map<String, dynamic> json) {
  return AddUserInfo(
    json['name'] as String,
    json['avatar'] as String,
    json['sex'] as String,
    json['sign'] as String,
    json['userId'] as String,
    json['age'] as int,
    (json['identity'] as List)
        ?.map((e) =>
            e == null ? null : Identity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['userVipStauts'] as bool,
    (json['medal'] as List)
        ?.map(
            (e) => e == null ? null : Medal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['videoDuration'] as int,
  );
}

Map<String, dynamic> _$AddUserInfoToJson(AddUserInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'sex': instance.sex,
      'sign': instance.sign,
      'userId': instance.userId,
      'age': instance.age,
      'identity': instance.identity,
      'userVipStauts': instance.userVipStauts,
      'medal': instance.medal,
      'videoDuration': instance.videoDuration,
    };

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return Identity(
    json['id'] as String,
    json['name'] as String,
    json['pic'] as String,
    json['remark'] as String,
    json['status'] as String,
    json['addTime'] as String,
  );
}

Map<String, dynamic> _$IdentityToJson(Identity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pic': instance.pic,
      'remark': instance.remark,
      'status': instance.status,
      'addTime': instance.addTime,
    };

Medal _$MedalFromJson(Map<String, dynamic> json) {
  return Medal(
    json['id'] as String,
    json['type'] as String,
    json['name'] as String,
    json['desc'] as String,
    json['picNot'] as String,
    json['picSmall'] as String,
    json['reqDesc'] as String,
    json['getTime'] as String,
    json['selected'] as bool,
  );
}

Map<String, dynamic> _$MedalToJson(Medal instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'desc': instance.desc,
      'picNot': instance.picNot,
      'picSmall': instance.picSmall,
      'reqDesc': instance.reqDesc,
      'getTime': instance.getTime,
      'selected': instance.selected,
    };
