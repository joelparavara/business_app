class User {
  String firstName;
  String lastName;

  User({this.firstName, this.lastName});

  static List<User> getUsers() {
    return <User>[
      User(firstName: "Joel", lastName: "Thomson"),
      User(firstName: "Ben", lastName: "John"),
      User(firstName: "Joel", lastName: "Thomson"),
      User(firstName: "Ben", lastName: "John"),
      User(firstName: "Joel", lastName: "Thomson"),
      User(firstName: "Ben", lastName: "John"),
      User(firstName: "Joel", lastName: "Thomson"),
      User(firstName: "Ben", lastName: "John")
    ];
  }
}