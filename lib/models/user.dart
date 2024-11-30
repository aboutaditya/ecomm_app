
import 'dart:convert';


class User{
  final String id;
  final String fullName;
  final String email;
  final String state;
  final String city;
  final String locality;
  final String password;

  User({required this.id,
    required this.fullName,
    required this.email,
    required this.state,
    required this.city,
    required this.locality,
    required this.password});
//Serialization:convert user object to a Map
// a map is a collection of key value pairs
//why: converting to a map is an intermediate step that makes it easier to serialize
//the object to format like JSON for storage or transimission

Map<String,dynamic>toMap() {
  return <String, dynamic>{
    "id": id,
    "fullName": fullName,
    "email": email,
    "state": state,
    "city": city,
    "locality": locality,
    "password": password,
  };
}
  //serialisation convert mao ti a JSON strong
  // this method directly encode the data from map into a json string
// the json.encode() function convert a dart object (list or map)into a jason string representation
  // making it sutabel for communication between systemss

  String toJson()=>json.encode(toMap());

  // deserialisation convert a map to a user object
  // purpose manipulation and user once the data is converted to a user object
  // it cam be easily manipulated and use within the application



  // the factory constructor takes a map usisallly obtained from json object
  // and convert it into a user object if a feild is not present in thr map
  // it defaults to an empty string

  factory User.fromMap(Map<String,dynamic>map){
    return User(
      id:map['_id'] as String? ??"",
      fullName:map['fullName'] as String? ??"",
      email:map['email'] as String? ??"",
      state:map['state'] as String? ??"",
      city:map['city'] as String? ??"",
      locality:map['locality'] as String? ??"",
      password:map['password'] as String? ??"",
    );
  }

  //fromJson :this factory constructor takes json stringf and decoed into a map<string,dynamic>
//and then uses from map to convert that mapo into a user object.

factory User.fromJson(String source)=>User.fromMap(json.decode(source) as Map<String,dynamic>);
}
