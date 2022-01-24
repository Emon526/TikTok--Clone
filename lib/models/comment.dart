import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  String username;
  String uid;
  String id;
  List likes;
  String comment;
  String profilePhoto;
  final datePublished;

  Comment({
    required this.username,
    required this.uid,
    required this.id,
    required this.likes,
    required this.comment,
    required this.profilePhoto,
    required this.datePublished,
  });
  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "profilePhoto": profilePhoto,
        "id": id,
        "likes": likes,
        "comment": comment,
        "datePublished": datePublished,
      };
  static Comment fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Comment(
        username: snapshot['username'],
        uid: snapshot['uid'],
        id: snapshot['id'],
        likes: snapshot['likes'],
        comment: snapshot['comment'],
        profilePhoto: snapshot['profilePhoto'],
        datePublished: snapshot['datePublished']);
  }
}
