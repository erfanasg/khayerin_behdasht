class Post {
  List<String> bannerList;
  List<BlogCategory> blogCategory;
  List<NewsCategory> newsCategory;
  List<NewsListItems> newsListItems;
  List<BlogListItems> blogListItems;

  Post(
      {this.bannerList,
      this.blogCategory,
      this.newsCategory,
      this.newsListItems,
      this.blogListItems});

  Post.fromJson(Map<String, dynamic> json) {
    bannerList = json['BannerList'].cast<String>();
    if (json['BlogCategory'] != null) {
      blogCategory = new List<BlogCategory>();
      json['BlogCategory'].forEach((v) {
        blogCategory.add(new BlogCategory.fromJson(v));
      });
    }
    if (json['NewsCategory'] != null) {
      newsCategory = new List<NewsCategory>();
      json['NewsCategory'].forEach((v) {
        newsCategory.add(new NewsCategory.fromJson(v));
      });
    }
    if (json['NewsListItems'] != null) {
      newsListItems = new List<NewsListItems>();
      json['NewsListItems'].forEach((v) {
        newsListItems.add(new NewsListItems.fromJson(v));
      });
    }
    if (json['BlogListItems'] != null) {
      blogListItems = new List<BlogListItems>();
      json['BlogListItems'].forEach((v) {
        blogListItems.add(new BlogListItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BannerList'] = this.bannerList;
    if (this.blogCategory != null) {
      data['BlogCategory'] = this.blogCategory.map((v) => v.toJson()).toList();
    }
    if (this.newsCategory != null) {
      data['NewsCategory'] = this.newsCategory.map((v) => v.toJson()).toList();
    }
    if (this.newsListItems != null) {
      data['NewsListItems'] =
          this.newsListItems.map((v) => v.toJson()).toList();
    }
    if (this.blogListItems != null) {
      data['BlogListItems'] =
          this.blogListItems.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BlogCategory {
  int id;
  String name;

  BlogCategory({this.id, this.name});

  BlogCategory.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    return data;
  }
}

class NewsCategory {
  int id;
  String name;

  NewsCategory({this.id, this.name});

  NewsCategory.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    return data;
  }
}

class NewsListItems {
  int id;
  String title;
  String image;
  String dateTime;
  String miniDescription;
  String categoryTitle;

  NewsListItems(
      {this.id,
      this.title,
      this.image,
      this.dateTime,
      this.miniDescription,
      this.categoryTitle});

  NewsListItems.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    image = json['Image'];
    dateTime = json['DateTime'];
    miniDescription = json['MiniDescription'];
    categoryTitle = json['CategoryTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Image'] = this.image;
    data['DateTime'] = this.dateTime;
    data['MiniDescription'] = this.miniDescription;
    data['CategoryTitle'] = this.categoryTitle;
    return data;
  }
}

class BlogListItems {
  int id;
  String title;
  String image;
  String dateTime;
  String miniDescription;
  String categoryTitle;

  BlogListItems(
      {this.id,
      this.title,
      this.image,
      this.dateTime,
      this.miniDescription,
      this.categoryTitle});

  BlogListItems.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    image = json['Image'];
    dateTime = json['DateTime'];
    miniDescription = json['MiniDescription'];
    categoryTitle = json['CategoryTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Image'] = this.image;
    data['DateTime'] = this.dateTime;
    data['MiniDescription'] = this.miniDescription;
    data['CategoryTitle'] = this.categoryTitle;
    return data;
  }
}
