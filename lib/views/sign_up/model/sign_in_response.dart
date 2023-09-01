import 'package:thuprai_stacked_app/network/api_error.dart';

class SignInResponse {
  String? fullName;
  String? email;
  int? id;
  String? token;
  bool? isPublisher;
  bool? isAuthor;
  bool? isOrganizer;
  ApiError? apiError;
  SignInResponse({
    this.fullName,
    this.email,
    this.id,
    this.token,
    this.isPublisher,
    this.isAuthor,
    this.isOrganizer,
    this.apiError,
  });

  SignInResponse.withDioException(this.apiError);

  factory SignInResponse.fromJson(Map<String, dynamic> json) => SignInResponse(
        fullName: json["full_name"],
        email: json["email"],
        id: json["id"],
        token: json["token"],
        isPublisher: json["is_publisher"],
        isAuthor: json["is_author"],
        isOrganizer: json["is_organizer"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "email": email,
        "id": id,
        "token": token,
        "is_publisher": isPublisher,
        "is_author": isAuthor,
        "is_organizer": isOrganizer,
      };
}
