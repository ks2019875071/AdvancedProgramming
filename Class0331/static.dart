class objectCnt {
  static int cnt = 0;

  objectCnt() {
    cnt++;
  }
}

void main() {
  var obj1 = new objectCnt();
  var obj2 = new objectCnt();

  print("객체의 수: ${objectCnt.cnt}");
}