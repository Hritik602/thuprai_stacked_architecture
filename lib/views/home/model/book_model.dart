import 'package:thuprai_stacked_app/network/api_error.dart';

class BookReleaseModel {
  Pagination? pagination;
  List<Books>? results;
  ApiError? apiError;
  BookReleaseModel({
    this.pagination,
    this.results,
  });
  BookReleaseModel.withException(this.apiError);
  factory BookReleaseModel.fromJson(Map<String, dynamic> json) =>
      BookReleaseModel(
        pagination: Pagination.fromJson(json["pagination"]),
        results:
            List<Books>.from(json["results"].map((x) => Books.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Pagination {
  final int? count;
  final int? page;
  final int? pages;
  final String? previous;
  final String? next;
  final int? size;

  Pagination({
    this.count,
    this.page,
    this.pages,
    this.previous,
    this.next,
    this.size,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        count: json["count"],
        page: json["page"],
        pages: json["pages"],
        previous: json["previous"],
        next: json["next"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "page": page,
        "pages": pages,
        "previous": previous,
        "next": next,
        "size": size,
      };
}

class Books {
  final String? title;
  final String? englishTitle;
  final String? slug;
  final String? frontCover;

  Books({
    this.title,
    this.englishTitle,
    this.slug,
    this.frontCover,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        title: json["title"],
        englishTitle: json["english_title"],
        slug: json["slug"],
        frontCover: json["front_cover"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "english_title": englishTitle,
        "slug": slug,
        "front_cover": frontCover,
      };
}
