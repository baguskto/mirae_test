class UsersModel {
  UsersModel({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  int totalCount;
  bool incompleteResults;
  List<Item>? items;

  factory UsersModel.fromMap(Map<String, dynamic> json) => UsersModel(
        totalCount: json['total_count'] == null ? null : json['total_count'],
        incompleteResults: json['incomplete_results'] == null
            ? null
            : json['incomplete_results'],
        items: json['items'] == null
            ? null
            : List<Item>.from(json['items'].map((x) => Item.fromMap(x))),
      );
}

class Item {
  Item({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  String type;
  bool siteAdmin;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        login: json['login'] == null ? null : json['login'],
        id: json['id'] == null ? null : json['id'],
        nodeId: json['node_id'] == null ? null : json['node_id'],
        avatarUrl: json['avatar_url'] == null ? null : json['avatar_url'],
        gravatarId: json['gravatar_id'] == null ? null : json['gravatar_id'],
        url: json['url'] == null ? null : json['url'],
        htmlUrl: json['html_url'] == null ? null : json['html_url'],
        followersUrl:
            json['followers_url'] == null ? null : json['followers_url'],
        followingUrl:
            json['following_url'] == null ? null : json['following_url'],
        gistsUrl: json['gists_url'] == null ? null : json['gists_url'],
        starredUrl: json['starred_url'] == null ? null : json['starred_url'],
        subscriptionsUrl: json['subscriptions_url'] == null
            ? null
            : json['subscriptions_url'],
        organizationsUrl: json['organizations_url'] == null
            ? null
            : json['organizations_url'],
        reposUrl: json['repos_url'] == null ? null : json['repos_url'],
        eventsUrl: json['events_url'] == null ? null : json['events_url'],
        receivedEventsUrl: json['received_events_url'] == null
            ? null
            : json['received_events_url'],
        type: json['type'] == null ? null : json['type'],
        siteAdmin: json['site_admin'] == null ? null : json['site_admin'],
      );
}
