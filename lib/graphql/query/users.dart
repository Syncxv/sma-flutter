String getUsers = """query Query {
  getUsers {
    _id
    username
    email
    avatar
    isStaff
    followers {
      _id
      username
    }
    displayName
  }

}
""";
