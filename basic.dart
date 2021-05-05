void main() {
  String name = "Pattarapon";
  int? age;
  age = 23;
  brithDate(age);
  print("$name $age");
}

void brithDate(int age) {
  try {
    age = age + 1;
  } catch (e) {
    print(e);
  }
}
