import 'package:thuprai_stacked_app/network/api_error.dart';

class BookDetailModel {
  String? englishTitle;
  dynamic englishSubtitle;
  String? nepaliTitle;
  dynamic nepaliSubtitle;
  String? englishDescription;
  String? nepaliDescription;
  String? backCoverText;
  String? language;
  String? editionText;
  Publisher? publisher;
  List<Category>? categories;
  DateTime? releaseOn;
  String? slug;
  Ebook? ebook;
  Paperback? paperback;
  dynamic hardcover;
  String? frontCover;
  List<Author>? authors;
  String? featuredImage;
  int? id;
  List<dynamic>? relatedBooks;
  bool? released;
  dynamic amazon;
  dynamic pdf;
  bool? isUnicode;
  List<dynamic>? contributions;
  List<dynamic>? bookAwards;
  List<dynamic>? bookAwardShortlists;
  String? frontCoverFull;
  String? backCoverFull;
  String? backCoverThumbnail;
  bool? hasTableOfContents;
  dynamic audiobook;
  ApiError? apiError;
  BookDetailModel({
    this.englishTitle,
    this.englishSubtitle,
    this.nepaliTitle,
    this.nepaliSubtitle,
    this.englishDescription,
    this.nepaliDescription,
    this.backCoverText,
    this.language,
    this.editionText,
    this.publisher,
    this.categories,
    this.releaseOn,
    this.slug,
    this.ebook,
    this.paperback,
    this.hardcover,
    this.frontCover,
    this.authors,
    this.featuredImage,
    this.id,
    this.relatedBooks,
    this.released,
    this.amazon,
    this.pdf,
    this.isUnicode,
    this.contributions,
    this.bookAwards,
    this.bookAwardShortlists,
    this.frontCoverFull,
    this.backCoverFull,
    this.backCoverThumbnail,
    this.hasTableOfContents,
    this.audiobook,
    this.apiError,
  });
  BookDetailModel.withDioException(this.apiError);
  factory BookDetailModel.fromJson(Map<String, dynamic> json) =>
      BookDetailModel(
        englishTitle: json["english_title"],
        englishSubtitle: json["english_subtitle"],
        nepaliTitle: json["nepali_title"],
        nepaliSubtitle: json["nepali_subtitle"],
        englishDescription: json["english_description"],
        nepaliDescription: json["nepali_description"],
        backCoverText: json["back_cover_text"],
        language: json["language"],
        editionText: json["edition_text"],
        publisher: json["publisher"] == null
            ? null
            : Publisher.fromJson(json["publisher"]),
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        releaseOn: json["release_on"] == null
            ? null
            : DateTime.parse(json["release_on"]),
        slug: json["slug"],
        ebook: json["ebook"] == null ? null : Ebook.fromJson(json["ebook"]),
        paperback: json["paperback"] == null
            ? null
            : Paperback.fromJson(json["paperback"]),
        hardcover: json["hardcover"],
        frontCover: json["front_cover"],
        authors: json["authors"] == null
            ? []
            : List<Author>.from(
                json["authors"]!.map((x) => Author.fromJson(x))),
        featuredImage: json["featured_image"],
        id: json["id"],
        relatedBooks: json["related_books"] == null
            ? []
            : List<dynamic>.from(json["related_books"]!.map((x) => x)),
        released: json["released"],
        amazon: json["amazon"],
        pdf: json["pdf"],
        isUnicode: json["is_unicode"],
        contributions: json["contributions"] == null
            ? []
            : List<dynamic>.from(json["contributions"]!.map((x) => x)),
        bookAwards: json["book_awards"] == null
            ? []
            : List<dynamic>.from(json["book_awards"]!.map((x) => x)),
        bookAwardShortlists: json["book_award_shortlists"] == null
            ? []
            : List<dynamic>.from(json["book_award_shortlists"]!.map((x) => x)),
        frontCoverFull: json["front_cover_full"],
        backCoverFull: json["back_cover_full"],
        backCoverThumbnail: json["back_cover_thumbnail"],
        hasTableOfContents: json["has_table_of_contents"],
        audiobook: json["audiobook"],
      );

  Map<String, dynamic> toJson() => {
        "english_title": englishTitle,
        "english_subtitle": englishSubtitle,
        "nepali_title": nepaliTitle,
        "nepali_subtitle": nepaliSubtitle,
        "english_description": englishDescription,
        "nepali_description": nepaliDescription,
        "back_cover_text": backCoverText,
        "language": language,
        "edition_text": editionText,
        "publisher": publisher?.toJson(),
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "release_on":
            "${releaseOn!.year.toString().padLeft(4, '0')}-${releaseOn!.month.toString().padLeft(2, '0')}-${releaseOn!.day.toString().padLeft(2, '0')}",
        "slug": slug,
        "ebook": ebook?.toJson(),
        "paperback": paperback?.toJson(),
        "hardcover": hardcover,
        "front_cover": frontCover,
        "authors": authors == null
            ? []
            : List<dynamic>.from(authors!.map((x) => x.toJson())),
        "featured_image": featuredImage,
        "id": id,
        "related_books": relatedBooks == null
            ? []
            : List<dynamic>.from(relatedBooks!.map((x) => x)),
        "released": released,
        "amazon": amazon,
        "pdf": pdf,
        "is_unicode": isUnicode,
        "contributions": contributions == null
            ? []
            : List<dynamic>.from(contributions!.map((x) => x)),
        "book_awards": bookAwards == null
            ? []
            : List<dynamic>.from(bookAwards!.map((x) => x)),
        "book_award_shortlists": bookAwardShortlists == null
            ? []
            : List<dynamic>.from(bookAwardShortlists!.map((x) => x)),
        "front_cover_full": frontCoverFull,
        "back_cover_full": backCoverFull,
        "back_cover_thumbnail": backCoverThumbnail,
        "has_table_of_contents": hasTableOfContents,
        "audiobook": audiobook,
      };
}

class Author {
  final String? name;
  final String? localizedName;
  final String? slug;

  Author({
    this.name,
    this.localizedName,
    this.slug,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        name: json["name"],
        localizedName: json["localized_name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "localized_name": localizedName,
        "slug": slug,
      };
}

class Category {
  final String? slug;
  final String? name;

  Category({
    this.slug,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        slug: json["slug"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "name": name,
      };
}

class Ebook {
  final int? mrp;
  final int? productId;
  final int? sellingPrice;
  final OwnershipStatus? ownershipStatus;
  final bool? hasAudio;
  final bool? isImageBook;

  Ebook({
    this.mrp,
    this.productId,
    this.sellingPrice,
    this.ownershipStatus,
    this.hasAudio,
    this.isImageBook,
  });

  factory Ebook.fromJson(Map<String, dynamic> json) => Ebook(
        mrp: json["mrp"],
        productId: json["product_id"],
        sellingPrice: json["selling_price"],
        ownershipStatus: json["ownership_status"] == null
            ? null
            : OwnershipStatus.fromJson(json["ownership_status"]),
        hasAudio: json["has_audio"],
        isImageBook: json["is_image_book"],
      );

  Map<String, dynamic> toJson() => {
        "mrp": mrp,
        "product_id": productId,
        "selling_price": sellingPrice,
        "ownership_status": ownershipStatus?.toJson(),
        "has_audio": hasAudio,
        "is_image_book": isImageBook,
      };
}

class OwnershipStatus {
  final bool? access;
  final String? reason;
  final dynamic subscriptionData;

  OwnershipStatus({
    this.access,
    this.reason,
    this.subscriptionData,
  });

  factory OwnershipStatus.fromJson(Map<String, dynamic> json) =>
      OwnershipStatus(
        access: json["access"],
        reason: json["reason"],
        subscriptionData: json["subscription_data"],
      );

  Map<String, dynamic> toJson() => {
        "access": access,
        "reason": reason,
        "subscription_data": subscriptionData,
      };
}

class Paperback {
  final String? isbn13;
  final String? pages;
  final dynamic width;
  final dynamic height;
  final dynamic thickness;
  final dynamic weight;
  final int? mrp;
  final int? sellingPrice;
  final int? productId;
  final String? origin;
  final String? isbn10;
  final dynamic dimensions;
  final bool? available;

  Paperback({
    this.isbn13,
    this.pages,
    this.width,
    this.height,
    this.thickness,
    this.weight,
    this.mrp,
    this.sellingPrice,
    this.productId,
    this.origin,
    this.isbn10,
    this.dimensions,
    this.available,
  });

  factory Paperback.fromJson(Map<String, dynamic> json) => Paperback(
        isbn13: json["isbn13"],
        pages: json["pages"],
        width: json["width"],
        height: json["height"],
        thickness: json["thickness"],
        weight: json["weight"],
        mrp: json["mrp"],
        sellingPrice: json["selling_price"],
        productId: json["product_id"],
        origin: json["origin"],
        isbn10: json["isbn10"],
        dimensions: json["dimensions"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "isbn13": isbn13,
        "pages": pages,
        "width": width,
        "height": height,
        "thickness": thickness,
        "weight": weight,
        "mrp": mrp,
        "selling_price": sellingPrice,
        "product_id": productId,
        "origin": origin,
        "isbn10": isbn10,
        "dimensions": dimensions,
        "available": available,
      };
}

class Publisher {
  final String? slug;
  final String? displayName;
  final String? logo;

  Publisher({
    this.slug,
    this.displayName,
    this.logo,
  });

  factory Publisher.fromJson(Map<String, dynamic> json) => Publisher(
        slug: json["slug"],
        displayName: json["display_name"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "display_name": displayName,
        "logo": logo,
      };
}
