class restaurantsinfo {
  String name;
  String img;
  String phone;
  // String area;
  restaurantsinfo({
    // required this.area,
    required this.img,
    required this.name,
    required this.phone,
  });
  String getImage() {
    return "https://bs.warshatec.com/public/images/albert-YYZU0Lo1uXE-unsplash.jpg";
  }

  /* factory restaurantsinfo.fromJson(map) => restaurantsinfo(
        name: map["data"]["name"],
        img: map["data"]["image"],
        phone: map["data"]["phone"],
        // area: map["data"]["area"],
      );*/

  factory restaurantsinfo.fromjsonData(Map<String, dynamic> data) {
    return restaurantsinfo(
      img: data["data"]["image"],
      name: data["data"]["name"],
      phone: data["data"]["phone"],
      //  area: data["data"]["area"],
    );
  }

  /* static List<restaurantsinfo> fromjsonArray(data) {
    List<restaurantsinfo> restaurants = [];
    List<dynamic> list = jsonDecode(data);
    for (dynamic map in list) {
      restaurants.add(restaurantsinfo.fromJson(map));
    }
    return restaurants;
  }*/
}
