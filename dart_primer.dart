class User {
  String username = "";
  int age = 0;
  User(String username, int age) {
    this.username = username;
    this.age = age;
  }
  void greeting() {
    print(
        "Hi, My name is ${this.username}, I am ${this.age}, Nice to meet you!");
  }
}

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);
  void greeting() {
    print("This is a super user");
  }
}

void main() {
  User user = new User('Tran Viet', 21);
  user.greeting();

  SuperUser superuser = new SuperUser('Tran Viet', 21);
  superuser.greeting();
}
