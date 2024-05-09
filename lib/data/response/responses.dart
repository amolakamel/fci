import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class LoginResponse {
  String password;
  String email;
  @JsonKey(name: "_id")
  int id;
  int results;

  LoginResponse(this.password, this.email, this.id, this.results);

  // toJson
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

//fromJson
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

// login response
// {
// "data": {
// "_id": "6637981f994b6630010d9064",
// "email": "Zainab123@gmail.com",
// "password": "zainab",
// "name": "Zaynaba",
// "__v": 0
// }
// }

// data response
// {
// "results": 3,
// "data": [
// {
// "_id": "6638e8c55024f017985f2749",
// "name": "lec2",
// "path": "http://localhost:3000/pdfs/category~8c192d15-b372-4b27-96ed-c688ebb98a38~1715005637087.pdf",
// "subjectName": "Network",
// "type": "exams"
// },
// {
// "_id": "6639173d03f58ec770ee8eb8",
// "name": "session1",
// "path": "http://localhost:3000/pdfs/category~ae9b9990-9496-45b0-bb5c-518e569665e4~1715017533198.pdf",
// "subjectName": "security",
// "type": "lectures"
// },
// {
// "_id": "66395d252409c84bdf2abe4d",
// "name": "session1",
// "path": "http://localhost:3000/pdfs/category~b1e444d4-f6e0-48ea-a6c7-66b6bc0fbcad~1715035429674.pdf",
// "subjectName": "security",
// "type": "lectures"
// }
// ]
