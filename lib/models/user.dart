import 'dart:convert';

class User {
  final String id;
  final String username;
  final String email;
  final String password;
  final String number;
  final String gst;
  final String confirmpas;
  final String address;
  final String type;
 // final String token;
  final List<dynamic> cart;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.number,
    required this.gst,
    required this.confirmpas,
    required this.address,
    required this.type,
   // required this.token,
    required this.cart,
    
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'number':number,
      'gst':gst,
      'confirmpas':confirmpas,
      'address': address,
      'type': type,
  //    'token': token,
      'cart': cart,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      number: map['number'] ?? '',
      gst: map['gst'] ?? '',
      confirmpas: map['confirmpas'] ?? '',
      address: map['address'] ?? '',
      type: map['type'] ?? '',
     // token: map['token'] ?? '',
      cart: List<Map<String, dynamic>>.from(
        map['cart']?.map(
          (x) => Map<String, dynamic>.from(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? password,
    String? number,
    String? gst,
    String? confirmpas,
    String? address,
    String? type,
   // String? token,
    List<dynamic>? cart,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      number: number ?? this.number,
      gst: gst ?? this.gst,
      confirmpas: confirmpas ?? this.confirmpas,
      address: address ?? this.address,
      type: type ?? this.type,
      //token: token ?? this.token,
      cart: cart ?? this.cart,
    );
  }
}