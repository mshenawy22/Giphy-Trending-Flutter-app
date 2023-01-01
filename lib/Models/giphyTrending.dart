class GiphyTrending {
  List<Data>? data;
  Pagination? pagination;
  Meta? meta;

  GiphyTrending({this.data, this.pagination, this.meta});

  GiphyTrending.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? type;
  String? id;
  String? url;
  String? slug;
  String? bitlyGifUrl;
  String? bitlyUrl;
  String? embedUrl;
  String? username;
  String? source;
  String? title;
  String? rating;
  String? contentUrl;
  String? sourceTld;
  String? sourcePostUrl;
  int? isSticker;
  String? importDatetime;
  String? trendingDatetime;
  Images? images;
  User? user;
  String? analyticsResponsePayload;
  Analytics? analytics;

  Data(
      {this.type,
        this.id,
        this.url,
        this.slug,
        this.bitlyGifUrl,
        this.bitlyUrl,
        this.embedUrl,
        this.username,
        this.source,
        this.title,
        this.rating,
        this.contentUrl,
        this.sourceTld,
        this.sourcePostUrl,
        this.isSticker,
        this.importDatetime,
        this.trendingDatetime,
        this.images,
        this.user,
        this.analyticsResponsePayload,
        this.analytics});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    bitlyGifUrl = json['bitly_gif_url'];
    bitlyUrl = json['bitly_url'];
    embedUrl = json['embed_url'];
    username = json['username'];
    source = json['source'];
    title = json['title'];
    rating = json['rating'];
    contentUrl = json['content_url'];
    sourceTld = json['source_tld'];
    sourcePostUrl = json['source_post_url'];
    isSticker = json['is_sticker'];
    importDatetime = json['import_datetime'];
    trendingDatetime = json['trending_datetime'];
    images =
    json['images'] != null ? new Images.fromJson(json['images']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    analyticsResponsePayload = json['analytics_response_payload'];
    analytics = json['analytics'] != null
        ? new Analytics.fromJson(json['analytics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['url'] = this.url;
    data['slug'] = this.slug;
    data['bitly_gif_url'] = this.bitlyGifUrl;
    data['bitly_url'] = this.bitlyUrl;
    data['embed_url'] = this.embedUrl;
    data['username'] = this.username;
    data['source'] = this.source;
    data['title'] = this.title;
    data['rating'] = this.rating;
    data['content_url'] = this.contentUrl;
    data['source_tld'] = this.sourceTld;
    data['source_post_url'] = this.sourcePostUrl;
    data['is_sticker'] = this.isSticker;
    data['import_datetime'] = this.importDatetime;
    data['trending_datetime'] = this.trendingDatetime;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['analytics_response_payload'] = this.analyticsResponsePayload;
    if (this.analytics != null) {
      data['analytics'] = this.analytics!.toJson();
    }
    return data;
  }
}

class Images {
  Original? original;
  Downsized? downsized;
  Downsized? downsizedLarge;
  Downsized? downsizedMedium;
  DownsizedSmall? downsizedSmall;
  Downsized? downsizedStill;
  FixedHeight? fixedHeight;
  FixedHeightDownsampled? fixedHeightDownsampled;
  FixedHeight? fixedHeightSmall;
  Downsized? fixedHeightSmallStill;
  Downsized? fixedHeightStill;
  FixedHeight? fixedWidth;
  FixedHeightDownsampled? fixedWidthDownsampled;
  FixedHeight? fixedWidthSmall;
  Downsized? fixedWidthSmallStill;
  Downsized? fixedWidthStill;
  Looping? looping;
  Downsized? originalStill;
  DownsizedSmall? originalMp4;
  DownsizedSmall? preview;
  Downsized? previewGif;
  Downsized? previewWebp;
  DownsizedSmall? hd;
  Downsized? d480wStill;
  DownsizedSmall? d4k;

  Images(
      {this.original,
        this.downsized,
        this.downsizedLarge,
        this.downsizedMedium,
        this.downsizedSmall,
        this.downsizedStill,
        this.fixedHeight,
        this.fixedHeightDownsampled,
        this.fixedHeightSmall,
        this.fixedHeightSmallStill,
        this.fixedHeightStill,
        this.fixedWidth,
        this.fixedWidthDownsampled,
        this.fixedWidthSmall,
        this.fixedWidthSmallStill,
        this.fixedWidthStill,
        this.looping,
        this.originalStill,
        this.originalMp4,
        this.preview,
        this.previewGif,
        this.previewWebp,
        this.hd,
        this.d480wStill,
        this.d4k});

  Images.fromJson(Map<String, dynamic> json) {
    original = json['original'] != null
        ? new Original.fromJson(json['original'])
        : null;
    downsized = json['downsized'] != null
        ? new Downsized.fromJson(json['downsized'])
        : null;
    downsizedLarge = json['downsized_large'] != null
        ? new Downsized.fromJson(json['downsized_large'])
        : null;
    downsizedMedium = json['downsized_medium'] != null
        ? new Downsized.fromJson(json['downsized_medium'])
        : null;
    downsizedSmall = json['downsized_small'] != null
        ? new DownsizedSmall.fromJson(json['downsized_small'])
        : null;
    downsizedStill = json['downsized_still'] != null
        ? new Downsized.fromJson(json['downsized_still'])
        : null;
    fixedHeight = json['fixed_height'] != null
        ? new FixedHeight.fromJson(json['fixed_height'])
        : null;
    fixedHeightDownsampled = json['fixed_height_downsampled'] != null
        ? new FixedHeightDownsampled.fromJson(json['fixed_height_downsampled'])
        : null;
    fixedHeightSmall = json['fixed_height_small'] != null
        ? new FixedHeight.fromJson(json['fixed_height_small'])
        : null;
    fixedHeightSmallStill = json['fixed_height_small_still'] != null
        ? new Downsized.fromJson(json['fixed_height_small_still'])
        : null;
    fixedHeightStill = json['fixed_height_still'] != null
        ? new Downsized.fromJson(json['fixed_height_still'])
        : null;
    fixedWidth = json['fixed_width'] != null
        ? new FixedHeight.fromJson(json['fixed_width'])
        : null;
    fixedWidthDownsampled = json['fixed_width_downsampled'] != null
        ? new FixedHeightDownsampled.fromJson(json['fixed_width_downsampled'])
        : null;
    fixedWidthSmall = json['fixed_width_small'] != null
        ? new FixedHeight.fromJson(json['fixed_width_small'])
        : null;
    fixedWidthSmallStill = json['fixed_width_small_still'] != null
        ? new Downsized.fromJson(json['fixed_width_small_still'])
        : null;
    fixedWidthStill = json['fixed_width_still'] != null
        ? new Downsized.fromJson(json['fixed_width_still'])
        : null;
    looping =
    json['looping'] != null ? new Looping.fromJson(json['looping']) : null;
    originalStill = json['original_still'] != null
        ? new Downsized.fromJson(json['original_still'])
        : null;
    originalMp4 = json['original_mp4'] != null
        ? new DownsizedSmall.fromJson(json['original_mp4'])
        : null;
    preview = json['preview'] != null
        ? new DownsizedSmall.fromJson(json['preview'])
        : null;
    previewGif = json['preview_gif'] != null
        ? new Downsized.fromJson(json['preview_gif'])
        : null;
    previewWebp = json['preview_webp'] != null
        ? new Downsized.fromJson(json['preview_webp'])
        : null;
    hd = json['hd'] != null ? new DownsizedSmall.fromJson(json['hd']) : null;
    d480wStill = json['480w_still'] != null
        ? new Downsized.fromJson(json['480w_still'])
        : null;
    d4k = json['4k'] != null ? new DownsizedSmall.fromJson(json['4k']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.original != null) {
      data['original'] = this.original!.toJson();
    }
    if (this.downsized != null) {
      data['downsized'] = this.downsized!.toJson();
    }
    if (this.downsizedLarge != null) {
      data['downsized_large'] = this.downsizedLarge!.toJson();
    }
    if (this.downsizedMedium != null) {
      data['downsized_medium'] = this.downsizedMedium!.toJson();
    }
    if (this.downsizedSmall != null) {
      data['downsized_small'] = this.downsizedSmall!.toJson();
    }
    if (this.downsizedStill != null) {
      data['downsized_still'] = this.downsizedStill!.toJson();
    }
    if (this.fixedHeight != null) {
      data['fixed_height'] = this.fixedHeight!.toJson();
    }
    if (this.fixedHeightDownsampled != null) {
      data['fixed_height_downsampled'] = this.fixedHeightDownsampled!.toJson();
    }
    if (this.fixedHeightSmall != null) {
      data['fixed_height_small'] = this.fixedHeightSmall!.toJson();
    }
    if (this.fixedHeightSmallStill != null) {
      data['fixed_height_small_still'] = this.fixedHeightSmallStill!.toJson();
    }
    if (this.fixedHeightStill != null) {
      data['fixed_height_still'] = this.fixedHeightStill!.toJson();
    }
    if (this.fixedWidth != null) {
      data['fixed_width'] = this.fixedWidth!.toJson();
    }
    if (this.fixedWidthDownsampled != null) {
      data['fixed_width_downsampled'] = this.fixedWidthDownsampled!.toJson();
    }
    if (this.fixedWidthSmall != null) {
      data['fixed_width_small'] = this.fixedWidthSmall!.toJson();
    }
    if (this.fixedWidthSmallStill != null) {
      data['fixed_width_small_still'] = this.fixedWidthSmallStill!.toJson();
    }
    if (this.fixedWidthStill != null) {
      data['fixed_width_still'] = this.fixedWidthStill!.toJson();
    }
    if (this.looping != null) {
      data['looping'] = this.looping!.toJson();
    }
    if (this.originalStill != null) {
      data['original_still'] = this.originalStill!.toJson();
    }
    if (this.originalMp4 != null) {
      data['original_mp4'] = this.originalMp4!.toJson();
    }
    if (this.preview != null) {
      data['preview'] = this.preview!.toJson();
    }
    if (this.previewGif != null) {
      data['preview_gif'] = this.previewGif!.toJson();
    }
    if (this.previewWebp != null) {
      data['preview_webp'] = this.previewWebp!.toJson();
    }
    if (this.hd != null) {
      data['hd'] = this.hd!.toJson();
    }
    if (this.d480wStill != null) {
      data['480w_still'] = this.d480wStill!.toJson();
    }
    if (this.d4k != null) {
      data['4k'] = this.d4k!.toJson();
    }
    return data;
  }
}

class Original {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
  String? frames;
  String? hash;

  Original(
      {this.height,
        this.width,
        this.size,
        this.url,
        this.mp4Size,
        this.mp4,
        this.webpSize,
        this.webp,
        this.frames,
        this.hash});

  Original.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
    frames = json['frames'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    data['frames'] = this.frames;
    data['hash'] = this.hash;
    return data;
  }
}

class Downsized {
  String? height;
  String? width;
  String? size;
  String? url;

  Downsized({this.height, this.width, this.size, this.url});

  Downsized.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    return data;
  }
}

class DownsizedSmall {
  String? height;
  String? width;
  String? mp4Size;
  String? mp4;

  DownsizedSmall({this.height, this.width, this.mp4Size, this.mp4});

  DownsizedSmall.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    return data;
  }
}

class FixedHeight {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedHeight(
      {this.height,
        this.width,
        this.size,
        this.url,
        this.mp4Size,
        this.mp4,
        this.webpSize,
        this.webp});

  FixedHeight.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    return data;
  }
}

class FixedHeightDownsampled {
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;

  FixedHeightDownsampled(
      {this.height, this.width, this.size, this.url, this.webpSize, this.webp});

  FixedHeightDownsampled.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    return data;
  }
}

class Looping {
  String? mp4Size;
  String? mp4;

  Looping({this.mp4Size, this.mp4});

  Looping.fromJson(Map<String, dynamic> json) {
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    return data;
  }
}

class User {
  String? avatarUrl;
  String? bannerImage;
  String? bannerUrl;
  String? profileUrl;
  String? username;
  String? displayName;
  String? description;
  String? instagramUrl;
  String? websiteUrl;
  bool? isVerified;

  User(
      {this.avatarUrl,
        this.bannerImage,
        this.bannerUrl,
        this.profileUrl,
        this.username,
        this.displayName,
        this.description,
        this.instagramUrl,
        this.websiteUrl,
        this.isVerified});

  User.fromJson(Map<String, dynamic> json) {
    avatarUrl = json['avatar_url'];
    bannerImage = json['banner_image'];
    bannerUrl = json['banner_url'];
    profileUrl = json['profile_url'];
    username = json['username'];
    displayName = json['display_name'];
    description = json['description'];
    instagramUrl = json['instagram_url'];
    websiteUrl = json['website_url'];
    isVerified = json['is_verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar_url'] = this.avatarUrl;
    data['banner_image'] = this.bannerImage;
    data['banner_url'] = this.bannerUrl;
    data['profile_url'] = this.profileUrl;
    data['username'] = this.username;
    data['display_name'] = this.displayName;
    data['description'] = this.description;
    data['instagram_url'] = this.instagramUrl;
    data['website_url'] = this.websiteUrl;
    data['is_verified'] = this.isVerified;
    return data;
  }
}

class Analytics {
  Onload? onload;
  Onload? onclick;
  Onload? onsent;

  Analytics({this.onload, this.onclick, this.onsent});

  Analytics.fromJson(Map<String, dynamic> json) {
    onload =
    json['onload'] != null ? new Onload.fromJson(json['onload']) : null;
    onclick =
    json['onclick'] != null ? new Onload.fromJson(json['onclick']) : null;
    onsent =
    json['onsent'] != null ? new Onload.fromJson(json['onsent']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.onload != null) {
      data['onload'] = this.onload!.toJson();
    }
    if (this.onclick != null) {
      data['onclick'] = this.onclick!.toJson();
    }
    if (this.onsent != null) {
      data['onsent'] = this.onsent!.toJson();
    }
    return data;
  }
}

class Onload {
  String? url;

  Onload({this.url});

  Onload.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class Pagination {
  int? totalCount;
  int? count;
  int? offset;

  Pagination({this.totalCount, this.count, this.offset});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    count = json['count'];
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['count'] = this.count;
    data['offset'] = this.offset;
    return data;
  }
}

class Meta {
  int? status;
  String? msg;
  String? responseId;

  Meta({this.status, this.msg, this.responseId});

  Meta.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    responseId = json['response_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    data['response_id'] = this.responseId;
    return data;
  }
}
