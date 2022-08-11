/// id : "20a7be47c8"
/// web_id : 6099688
/// type : "regular"
/// create_time : "2022-08-09T15:05:09+00:00"
/// archive_url : "http://eepurl.com/h8rEeX"
/// long_archive_url : "https://us13.campaign-archive.com/?u=8101a67f86725ea7e6865d852&id=20a7be47c8"
/// status : "save"
/// emails_sent : 0
/// send_time : ""
/// content_type : "template"
/// needs_block_refresh : false
/// resendable : false
/// recipients : {"list_id":"","list_is_active":false,"list_name":"","segment_text":"","recipient_count":0}
/// settings : {"subject_line":"this is from POSTMAN","preview_text":"POSTMAN SABKA BAAP","title":"","from_name":"pawan","reply_to":"pawanrao8448@gmail.com","use_conversation":false,"to_name":"","folder_id":"","authenticate":true,"auto_footer":false,"inline_css":false,"auto_tweet":false,"fb_comments":true,"timewarp":false,"template_id":0,"drag_and_drop":false}
/// tracking : {"opens":true,"html_clicks":true,"text_clicks":false,"goal_tracking":false,"ecomm360":false,"google_analytics":"","clicktale":""}
/// delivery_status : {"enabled":false}
/// _links : [{"rel":"parent","href":"https://us13.api.mailchimp.com/3.0/campaigns","method":"GET","targetSchema":"https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/CollectionResponse.json","schema":"https://us13.api.mailchimp.com/schema/3.0/Paths/Campaigns/Collection.json"},{"rel":"self","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8","method":"GET","targetSchema":"https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Response.json"},{"rel":"delete","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8","method":"DELETE"},{"rel":"send","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/send","method":"POST"},{"rel":"cancel_send","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/cancel-send","method":"POST"},{"rel":"feedback","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/feedback","method":"GET","targetSchema":"https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Feedback/CollectionResponse.json"},{"rel":"content","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/content","method":"GET","targetSchema":"https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Content/Response.json"},{"rel":"send_checklist","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/send-checklist","method":"GET","targetSchema":"https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/Checklist/Response.json"},{"rel":"pause","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/pause","method":"POST"},{"rel":"resume","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/resume","method":"POST"},{"rel":"replicate","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/replicate","method":"POST"},{"rel":"create_resend","href":"https://us13.api.mailchimp.com/3.0/campaigns/20a7be47c8/actions/create-resend","method":"POST"}]

class AddCampaignModel {
  AddCampaignModel({
      String? id,
      int? webId,
      String? type,
      String? createTime,
      String? archiveUrl,
      String? longArchiveUrl,
      String? status,
      int? emailsSent,
      String? sendTime,
      String? contentType,
      bool? needsBlockRefresh,
      bool? resendable,
      Recipients? recipients,
      Settings? settings,
      Tracking? tracking,
      DeliveryStatus? deliveryStatus, 
      List<Links>? links,}){
    _id = id;
    _webId = webId;
    _type = type;
    _createTime = createTime;
    _archiveUrl = archiveUrl;
    _longArchiveUrl = longArchiveUrl;
    _status = status;
    _emailsSent = emailsSent;
    _sendTime = sendTime;
    _contentType = contentType;
    _needsBlockRefresh = needsBlockRefresh;
    _resendable = resendable;
    _recipients = recipients;
    _settings = settings;
    _tracking = tracking;
    _deliveryStatus = deliveryStatus;
    _links = links;
}

  AddCampaignModel.fromJson(dynamic json) {
    _id = json['id'];
    _webId = json['web_id'];
    _type = json['type'];
    _createTime = json['create_time'];
    _archiveUrl = json['archive_url'];
    _longArchiveUrl = json['long_archive_url'];
    _status = json['status'];
    _emailsSent = json['emails_sent'];
    _sendTime = json['send_time'];
    _contentType = json['content_type'];
    _needsBlockRefresh = json['needs_block_refresh'];
    _resendable = json['resendable'];
    _recipients = json['recipients'] != null ? Recipients.fromJson(json['recipients']) : null;
    _settings = json['settings'] != null ? Settings.fromJson(json['settings']) : null;
    _tracking = json['tracking'] != null ? Tracking.fromJson(json['tracking']) : null;
    _deliveryStatus = json['delivery_status'] != null ? DeliveryStatus.fromJson(json['delivery_status']) : null;
    if (json['_links'] != null) {
      _links = [];
      json['_links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
  }
  String? _id;
  int? _webId;
  String? _type;
  String? _createTime;
  String? _archiveUrl;
  String? _longArchiveUrl;
  String? _status;
  int? _emailsSent;
  String? _sendTime;
  String? _contentType;
  bool? _needsBlockRefresh;
  bool? _resendable;
  Recipients? _recipients;
  Settings? _settings;
  Tracking? _tracking;
  DeliveryStatus? _deliveryStatus;
  List<Links>? _links;
AddCampaignModel copyWith({  String? id,
  int? webId,
  String? type,
  String? createTime,
  String? archiveUrl,
  String? longArchiveUrl,
  String? status,
  int? emailsSent,
  String? sendTime,
  String? contentType,
  bool? needsBlockRefresh,
  bool? resendable,
  Recipients? recipients,
  Settings? settings,
  Tracking? tracking,
  DeliveryStatus? deliveryStatus,
  List<Links>? links,
}) => AddCampaignModel(  id: id ?? _id,
  webId: webId ?? _webId,
  type: type ?? _type,
  createTime: createTime ?? _createTime,
  archiveUrl: archiveUrl ?? _archiveUrl,
  longArchiveUrl: longArchiveUrl ?? _longArchiveUrl,
  status: status ?? _status,
  emailsSent: emailsSent ?? _emailsSent,
  sendTime: sendTime ?? _sendTime,
  contentType: contentType ?? _contentType,
  needsBlockRefresh: needsBlockRefresh ?? _needsBlockRefresh,
  resendable: resendable ?? _resendable,
  recipients: recipients ?? _recipients,
  settings: settings ?? _settings,
  tracking: tracking ?? _tracking,
  deliveryStatus: deliveryStatus ?? _deliveryStatus,
  links: links ?? _links,
);
  String? get id => _id;
  int? get webId => _webId;
  String? get type => _type;
  String? get createTime => _createTime;
  String? get archiveUrl => _archiveUrl;
  String? get longArchiveUrl => _longArchiveUrl;
  String? get status => _status;
  int? get emailsSent => _emailsSent;
  String? get sendTime => _sendTime;
  String? get contentType => _contentType;
  bool? get needsBlockRefresh => _needsBlockRefresh;
  bool? get resendable => _resendable;
  Recipients? get recipients => _recipients;
  Settings? get settings => _settings;
  Tracking? get tracking => _tracking;
  DeliveryStatus? get deliveryStatus => _deliveryStatus;
  List<Links>? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['web_id'] = _webId;
    map['type'] = _type;
    map['create_time'] = _createTime;
    map['archive_url'] = _archiveUrl;
    map['long_archive_url'] = _longArchiveUrl;
    map['status'] = _status;
    map['emails_sent'] = _emailsSent;
    map['send_time'] = _sendTime;
    map['content_type'] = _contentType;
    map['needs_block_refresh'] = _needsBlockRefresh;
    map['resendable'] = _resendable;
    if (_recipients != null) {
      map['recipients'] = _recipients?.toJson();
    }
    if (_settings != null) {
      map['settings'] = _settings?.toJson();
    }
    if (_tracking != null) {
      map['tracking'] = _tracking?.toJson();
    }
    if (_deliveryStatus != null) {
      map['delivery_status'] = _deliveryStatus?.toJson();
    }
    if (_links != null) {
      map['_links'] = _links?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rel : "parent"
/// href : "https://us13.api.mailchimp.com/3.0/campaigns"
/// method : "GET"
/// targetSchema : "https://us13.api.mailchimp.com/schema/3.0/Definitions/Campaigns/CollectionResponse.json"
/// schema : "https://us13.api.mailchimp.com/schema/3.0/Paths/Campaigns/Collection.json"

class Links {
  Links({
      String? rel, 
      String? href, 
      String? method, 
      String? targetSchema, 
      String? schema,}){
    _rel = rel;
    _href = href;
    _method = method;
    _targetSchema = targetSchema;
    _schema = schema;
}

  Links.fromJson(dynamic json) {
    _rel = json['rel'];
    _href = json['href'];
    _method = json['method'];
    _targetSchema = json['targetSchema'];
    _schema = json['schema'];
  }
  String? _rel;
  String? _href;
  String? _method;
  String? _targetSchema;
  String? _schema;
Links copyWith({  String? rel,
  String? href,
  String? method,
  String? targetSchema,
  String? schema,
}) => Links(  rel: rel ?? _rel,
  href: href ?? _href,
  method: method ?? _method,
  targetSchema: targetSchema ?? _targetSchema,
  schema: schema ?? _schema,
);
  String? get rel => _rel;
  String? get href => _href;
  String? get method => _method;
  String? get targetSchema => _targetSchema;
  String? get schema => _schema;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rel'] = _rel;
    map['href'] = _href;
    map['method'] = _method;
    map['targetSchema'] = _targetSchema;
    map['schema'] = _schema;
    return map;
  }

}

/// enabled : false

class DeliveryStatus {
  DeliveryStatus({
      bool? enabled,}){
    _enabled = enabled;
}

  DeliveryStatus.fromJson(dynamic json) {
    _enabled = json['enabled'];
  }
  bool? _enabled;
DeliveryStatus copyWith({  bool? enabled,
}) => DeliveryStatus(  enabled: enabled ?? _enabled,
);
  bool? get enabled => _enabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enabled'] = _enabled;
    return map;
  }

}

/// opens : true
/// html_clicks : true
/// text_clicks : false
/// goal_tracking : false
/// ecomm360 : false
/// google_analytics : ""
/// clicktale : ""

class Tracking {
  Tracking({
      bool? opens, 
      bool? htmlClicks, 
      bool? textClicks, 
      bool? goalTracking, 
      bool? ecomm360, 
      String? googleAnalytics, 
      String? clicktale,}){
    _opens = opens;
    _htmlClicks = htmlClicks;
    _textClicks = textClicks;
    _goalTracking = goalTracking;
    _ecomm360 = ecomm360;
    _googleAnalytics = googleAnalytics;
    _clicktale = clicktale;
}

  Tracking.fromJson(dynamic json) {
    _opens = json['opens'];
    _htmlClicks = json['html_clicks'];
    _textClicks = json['text_clicks'];
    _goalTracking = json['goal_tracking'];
    _ecomm360 = json['ecomm360'];
    _googleAnalytics = json['google_analytics'];
    _clicktale = json['clicktale'];
  }
  bool? _opens;
  bool? _htmlClicks;
  bool? _textClicks;
  bool? _goalTracking;
  bool? _ecomm360;
  String? _googleAnalytics;
  String? _clicktale;
Tracking copyWith({  bool? opens,
  bool? htmlClicks,
  bool? textClicks,
  bool? goalTracking,
  bool? ecomm360,
  String? googleAnalytics,
  String? clicktale,
}) => Tracking(  opens: opens ?? _opens,
  htmlClicks: htmlClicks ?? _htmlClicks,
  textClicks: textClicks ?? _textClicks,
  goalTracking: goalTracking ?? _goalTracking,
  ecomm360: ecomm360 ?? _ecomm360,
  googleAnalytics: googleAnalytics ?? _googleAnalytics,
  clicktale: clicktale ?? _clicktale,
);
  bool? get opens => _opens;
  bool? get htmlClicks => _htmlClicks;
  bool? get textClicks => _textClicks;
  bool? get goalTracking => _goalTracking;
  bool? get ecomm360 => _ecomm360;
  String? get googleAnalytics => _googleAnalytics;
  String? get clicktale => _clicktale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['opens'] = _opens;
    map['html_clicks'] = _htmlClicks;
    map['text_clicks'] = _textClicks;
    map['goal_tracking'] = _goalTracking;
    map['ecomm360'] = _ecomm360;
    map['google_analytics'] = _googleAnalytics;
    map['clicktale'] = _clicktale;
    return map;
  }

}

/// subject_line : "this is from POSTMAN"
/// preview_text : "POSTMAN SABKA BAAP"
/// title : ""
/// from_name : "pawan"
/// reply_to : "pawanrao8448@gmail.com"
/// use_conversation : false
/// to_name : ""
/// folder_id : ""
/// authenticate : true
/// auto_footer : false
/// inline_css : false
/// auto_tweet : false
/// fb_comments : true
/// timewarp : false
/// template_id : 0
/// drag_and_drop : false

class Settings {
  Settings({
      String? subjectLine, 
      String? previewText, 
      String? title, 
      String? fromName, 
      String? replyTo, 
      bool? useConversation, 
      String? toName, 
      String? folderId, 
      bool? authenticate, 
      bool? autoFooter, 
      bool? inlineCss, 
      bool? autoTweet, 
      bool? fbComments, 
      bool? timewarp, 
      int? templateId, 
      bool? dragAndDrop,}){
    _subjectLine = subjectLine;
    _previewText = previewText;
    _title = title;
    _fromName = fromName;
    _replyTo = replyTo;
    _useConversation = useConversation;
    _toName = toName;
    _folderId = folderId;
    _authenticate = authenticate;
    _autoFooter = autoFooter;
    _inlineCss = inlineCss;
    _autoTweet = autoTweet;
    _fbComments = fbComments;
    _timewarp = timewarp;
    _templateId = templateId;
    _dragAndDrop = dragAndDrop;
}

  Settings.fromJson(dynamic json) {
    _subjectLine = json['subject_line'];
    _previewText = json['preview_text'];
    _title = json['title'];
    _fromName = json['from_name'];
    _replyTo = json['reply_to'];
    _useConversation = json['use_conversation'];
    _toName = json['to_name'];
    _folderId = json['folder_id'];
    _authenticate = json['authenticate'];
    _autoFooter = json['auto_footer'];
    _inlineCss = json['inline_css'];
    _autoTweet = json['auto_tweet'];
    _fbComments = json['fb_comments'];
    _timewarp = json['timewarp'];
    _templateId = json['template_id'];
    _dragAndDrop = json['drag_and_drop'];
  }
  String? _subjectLine;
  String? _previewText;
  String? _title;
  String? _fromName;
  String? _replyTo;
  bool? _useConversation;
  String? _toName;
  String? _folderId;
  bool? _authenticate;
  bool? _autoFooter;
  bool? _inlineCss;
  bool? _autoTweet;
  bool? _fbComments;
  bool? _timewarp;
  int? _templateId;
  bool? _dragAndDrop;
Settings copyWith({  String? subjectLine,
  String? previewText,
  String? title,
  String? fromName,
  String? replyTo,
  bool? useConversation,
  String? toName,
  String? folderId,
  bool? authenticate,
  bool? autoFooter,
  bool? inlineCss,
  bool? autoTweet,
  bool? fbComments,
  bool? timewarp,
  int? templateId,
  bool? dragAndDrop,
}) => Settings(  subjectLine: subjectLine ?? _subjectLine,
  previewText: previewText ?? _previewText,
  title: title ?? _title,
  fromName: fromName ?? _fromName,
  replyTo: replyTo ?? _replyTo,
  useConversation: useConversation ?? _useConversation,
  toName: toName ?? _toName,
  folderId: folderId ?? _folderId,
  authenticate: authenticate ?? _authenticate,
  autoFooter: autoFooter ?? _autoFooter,
  inlineCss: inlineCss ?? _inlineCss,
  autoTweet: autoTweet ?? _autoTweet,
  fbComments: fbComments ?? _fbComments,
  timewarp: timewarp ?? _timewarp,
  templateId: templateId ?? _templateId,
  dragAndDrop: dragAndDrop ?? _dragAndDrop,
);
  String? get subjectLine => _subjectLine;
  String? get previewText => _previewText;
  String? get title => _title;
  String? get fromName => _fromName;
  String? get replyTo => _replyTo;
  bool? get useConversation => _useConversation;
  String? get toName => _toName;
  String? get folderId => _folderId;
  bool? get authenticate => _authenticate;
  bool? get autoFooter => _autoFooter;
  bool? get inlineCss => _inlineCss;
  bool? get autoTweet => _autoTweet;
  bool? get fbComments => _fbComments;
  bool? get timewarp => _timewarp;
  int? get templateId => _templateId;
  bool? get dragAndDrop => _dragAndDrop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['subject_line'] = _subjectLine;
    map['preview_text'] = _previewText;
    map['title'] = _title;
    map['from_name'] = _fromName;
    map['reply_to'] = _replyTo;
    map['use_conversation'] = _useConversation;
    map['to_name'] = _toName;
    map['folder_id'] = _folderId;
    map['authenticate'] = _authenticate;
    map['auto_footer'] = _autoFooter;
    map['inline_css'] = _inlineCss;
    map['auto_tweet'] = _autoTweet;
    map['fb_comments'] = _fbComments;
    map['timewarp'] = _timewarp;
    map['template_id'] = _templateId;
    map['drag_and_drop'] = _dragAndDrop;
    return map;
  }

}

/// list_id : ""
/// list_is_active : false
/// list_name : ""
/// segment_text : ""
/// recipient_count : 0

class Recipients {
  Recipients({
      String? listId, 
      bool? listIsActive, 
      String? listName, 
      String? segmentText, 
      int? recipientCount,}){
    _listId = listId;
    _listIsActive = listIsActive;
    _listName = listName;
    _segmentText = segmentText;
    _recipientCount = recipientCount;
}

  Recipients.fromJson(dynamic json) {
    _listId = json['list_id'];
    _listIsActive = json['list_is_active'];
    _listName = json['list_name'];
    _segmentText = json['segment_text'];
    _recipientCount = json['recipient_count'];
  }
  String? _listId;
  bool? _listIsActive;
  String? _listName;
  String? _segmentText;
  int? _recipientCount;
Recipients copyWith({  String? listId,
  bool? listIsActive,
  String? listName,
  String? segmentText,
  int? recipientCount,
}) => Recipients(  listId: listId ?? _listId,
  listIsActive: listIsActive ?? _listIsActive,
  listName: listName ?? _listName,
  segmentText: segmentText ?? _segmentText,
  recipientCount: recipientCount ?? _recipientCount,
);
  String? get listId => _listId;
  bool? get listIsActive => _listIsActive;
  String? get listName => _listName;
  String? get segmentText => _segmentText;
  int? get recipientCount => _recipientCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['list_id'] = _listId;
    map['list_is_active'] = _listIsActive;
    map['list_name'] = _listName;
    map['segment_text'] = _segmentText;
    map['recipient_count'] = _recipientCount;
    return map;
  }

}