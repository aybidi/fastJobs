class Professor{
  final String name;
  final String imageUrl;
  final String email;
  final String description;

  Professor({this.name, this.imageUrl, this.email, this.description});
}

var professorList = [
  Professor(
    name: "Edith Law",
    imageUrl: "assets/images/edith_law.jpeg",
    email: "edith.law@uwaterloo.ca",
    description: "My research lies at the intersection of human-computer interaction "
        "and Artificial Intelligence. More specifically, I'm interested in studying "
        "social computing"
  ),
  Professor(
      name: "Jian Zhao",
      imageUrl: "assets/images/jian_zhao.jpeg",
      email: "jian.zhao@uwaterloo.ca",
      description: "My research lies at the intersection of human-computer interaction "
          "and Artificial Intelligence. More specifically, I'm interested in studying "
          "social computing"
  ),
  Professor(
      name: "Ed Lank",
      imageUrl: "assets/images/ed_lank.jpeg",
      email: "edward.lank@uwaterloo.ca",
      description: "My research lies at the intersection of human-computer interaction "
          "and Artificial Intelligence. More specifically, I'm interested in studying "
          "social computing"
  ),
];