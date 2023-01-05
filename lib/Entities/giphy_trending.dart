

class GiphyQuery {
  List<GifData>? data;
  Pagination? pagination;
  Meta? meta;

  GiphyQuery({this.data, this.pagination, this.meta});

  GiphyQuery.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <GifData>[];
      json['data'].forEach((v) {
        data!.add( GifData.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ?  Pagination.fromJson(json['pagination'])
        : null;
    meta = json['meta'] != null ?  Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class GifData {
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

  GifData(
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

  GifData.fromJson(Map<String, dynamic> json) {
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
    json['images'] != null ?  Images.fromJson(json['images']) : null;
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
    analyticsResponsePayload = json['analytics_response_payload'];

    analytics = json['analytics'] != null
        ?  Analytics.fromJson(json['analytics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['url'] = url;
    data['slug'] = slug;
    data['bitly_gif_url'] = bitlyGifUrl;
    data['bitly_url'] = bitlyUrl;
    data['embed_url'] = embedUrl;
    data['username'] = username;
    data['source'] = source;
    data['title'] = title;
    data['rating'] = rating;
    data['content_url'] = contentUrl;
    data['source_tld'] = sourceTld;
    data['source_post_url'] = sourcePostUrl;
    data['is_sticker'] = isSticker;
    data['import_datetime'] = importDatetime;
    data['trending_datetime'] = trendingDatetime;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['analytics_response_payload'] = analyticsResponsePayload;
    if (analytics != null) {
      data['analytics'] = analytics!.toJson();
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
        ?  Original.fromJson(json['original'])
        : null;
    downsized = json['downsized'] != null
        ?  Downsized.fromJson(json['downsized'])
        : null;
    downsizedLarge = json['downsized_large'] != null
        ?  Downsized.fromJson(json['downsized_large'])
        : null;

    downsizedMedium = json['downsized_medium'] != null
        ?  Downsized.fromJson(json['downsized_medium'])
        : null;
    downsizedSmall = json['downsized_small'] != null
        ?  DownsizedSmall.fromJson(json['downsized_small'])
        : null;
    downsizedStill = json['downsized_still'] != null
        ?  Downsized.fromJson(json['downsized_still'])
        : null;
    fixedHeight = json['fixed_height'] != null
        ?  FixedHeight.fromJson(json['fixed_height'])
        : null;
    fixedHeightDownsampled = json['fixed_height_downsampled'] != null
        ?  FixedHeightDownsampled.fromJson(json['fixed_height_downsampled'])
        : null;
    fixedHeightSmall = json['fixed_height_small'] != null
        ?  FixedHeight.fromJson(json['fixed_height_small'])
        : null;
    fixedHeightSmallStill = json['fixed_height_small_still'] != null
        ?  Downsized.fromJson(json['fixed_height_small_still'])
        : null;
    fixedHeightStill = json['fixed_height_still'] != null
        ?  Downsized.fromJson(json['fixed_height_still'])
        : null;
    fixedWidth = json['fixed_width'] != null
        ?  FixedHeight.fromJson(json['fixed_width'])
        : null;
    fixedWidthDownsampled = json['fixed_width_downsampled'] != null
        ?  FixedHeightDownsampled.fromJson(json['fixed_width_downsampled'])
        : null;
    fixedWidthSmall = json['fixed_width_small'] != null
        ?  FixedHeight.fromJson(json['fixed_width_small'])
        : null;
    fixedWidthSmallStill = json['fixed_width_small_still'] != null
        ?  Downsized.fromJson(json['fixed_width_small_still'])
        : null;
    fixedWidthStill = json['fixed_width_still'] != null
        ?  Downsized.fromJson(json['fixed_width_still'])
        : null;
    looping =
    json['looping'] != null ?  Looping.fromJson(json['looping']) : null;
    originalStill = json['original_still'] != null
        ?  Downsized.fromJson(json['original_still'])
        : null;
    originalMp4 = json['original_mp4'] != null
        ?  DownsizedSmall.fromJson(json['original_mp4'])
        : null;
    preview = json['preview'] != null
        ?  DownsizedSmall.fromJson(json['preview'])
        : null;
    previewGif = json['preview_gif'] != null
        ?  Downsized.fromJson(json['preview_gif'])
        : null;
    previewWebp = json['preview_webp'] != null
        ?  Downsized.fromJson(json['preview_webp'])
        : null;
    hd = json['hd'] != null ?  DownsizedSmall.fromJson(json['hd']) : null;
    d480wStill = json['480w_still'] != null
        ?  Downsized.fromJson(json['480w_still'])
        : null;
    d4k = json['4k'] != null ?  DownsizedSmall.fromJson(json['4k']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (original != null) {
      data['original'] = original!.toJson();
    }
    if (downsized != null) {
      data['downsized'] = downsized!.toJson();
    }
    if (downsizedLarge != null) {
      data['downsized_large'] = downsizedLarge!.toJson();
    }
    if (downsizedMedium != null) {
      data['downsized_medium'] = downsizedMedium!.toJson();
    }
    if (downsizedSmall != null) {
      data['downsized_small'] = downsizedSmall!.toJson();
    }
    if (downsizedStill != null) {
      data['downsized_still'] = downsizedStill!.toJson();
    }
    if (fixedHeight != null) {
      data['fixed_height'] = fixedHeight!.toJson();
    }
    if (fixedHeightDownsampled != null) {
      data['fixed_height_downsampled'] = fixedHeightDownsampled!.toJson();
    }
    if (fixedHeightSmall != null) {
      data['fixed_height_small'] = fixedHeightSmall!.toJson();
    }
    if (fixedHeightSmallStill != null) {
      data['fixed_height_small_still'] = fixedHeightSmallStill!.toJson();
    }
    if (fixedHeightStill != null) {
      data['fixed_height_still'] = fixedHeightStill!.toJson();
    }
    if (fixedWidth != null) {
      data['fixed_width'] = fixedWidth!.toJson();
    }
    if (fixedWidthDownsampled != null) {
      data['fixed_width_downsampled'] = fixedWidthDownsampled!.toJson();
    }
    if (fixedWidthSmall != null) {
      data['fixed_width_small'] = fixedWidthSmall!.toJson();
    }
    if (fixedWidthSmallStill != null) {
      data['fixed_width_small_still'] = fixedWidthSmallStill!.toJson();
    }
    if (fixedWidthStill != null) {
      data['fixed_width_still'] = fixedWidthStill!.toJson();
    }
    if (looping != null) {
      data['looping'] = looping!.toJson();
    }
    if (originalStill != null) {
      data['original_still'] = originalStill!.toJson();
    }
    if (originalMp4 != null) {
      data['original_mp4'] = originalMp4!.toJson();
    }
    if (preview != null) {
      data['preview'] = preview!.toJson();
    }
    if (previewGif != null) {
      data['preview_gif'] = previewGif!.toJson();
    }
    if (previewWebp != null) {
      data['preview_webp'] = previewWebp!.toJson();
    }
    if (hd != null) {
      data['hd'] = hd!.toJson();
    }
    if (d480wStill != null) {
      data['480w_still'] = d480wStill!.toJson();
    }
    if (d4k != null) {
      data['4k'] = d4k!.toJson();
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['height'] = height;
    data['width'] = width;
    data['size'] = size;
    data['url'] = url;
    data['mp4_size'] = mp4Size;
    data['mp4'] = mp4;
    data['webp_size'] = webpSize;
    data['webp'] = webp;
    data['frames'] = frames;
    data['hash'] = hash;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['height'] = height;
    data['width'] = width;
    data['size'] = size;
    data['url'] = url;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['height'] = height;
    data['width'] = width;
    data['mp4_size'] = mp4Size;
    data['mp4'] = mp4;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['height'] = height;
    data['width'] = width;
    data['size'] = size;
    data['url'] = url;
    data['mp4_size'] = mp4Size;
    data['mp4'] = mp4;
    data['webp_size'] = webpSize;
    data['webp'] = webp;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['height'] = height;
    data['width'] = width;
    data['size'] = size;
    data['url'] = url;
    data['webp_size'] = webpSize;
    data['webp'] = webp;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['mp4_size'] = mp4Size;
    data['mp4'] = mp4;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['avatar_url'] = avatarUrl;
    data['banner_image'] = bannerImage;
    data['banner_url'] = bannerUrl;
    data['profile_url'] = profileUrl;
    data['username'] = username;
    data['display_name'] = displayName;
    data['description'] = description;
    data['instagram_url'] = instagramUrl;
    data['website_url'] = websiteUrl;
    data['is_verified'] = isVerified;
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
    json['onload'] != null ?  Onload.fromJson(json['onload']) : null;
    onclick =
    json['onclick'] != null ?  Onload.fromJson(json['onclick']) : null;
    onsent =
    json['onsent'] != null ?  Onload.fromJson(json['onsent']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (onload != null) {
      data['onload'] = onload!.toJson();
    }
    if (onclick != null) {
      data['onclick'] = onclick!.toJson();
    }
    if (onsent != null) {
      data['onsent'] = onsent!.toJson();
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['url'] = url;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['total_count'] = totalCount;
    data['count'] = count;
    data['offset'] = offset;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;
    data['response_id'] = responseId;
    return data;
  }
}
