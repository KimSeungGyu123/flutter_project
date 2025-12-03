import 'dart:math';

void main() {
  //중복 없이 번호를 추첨해 복권을 발급
  List<int> myNumbers = [];
  while (myNumbers.length < 6) {
    int number = Random().nextInt(45) + 1; // 1~45까지 번호 생성
    if (!myNumbers.contains(number)) {
      // 번호가 중복되지 않으면
      myNumbers.add(number); // 숫자를 추가한다.
    }
  }
  print("발급한 로또 번호 : $myNumbers");

  //발급한 복권과 당첨 번호 비교
  List<int> win = [9, 19, 29, 35, 37, 38];
  int correct = 0;
  for (int num in myNumbers) {
    if (win.contains(num)) {
      correct++;
    }
  }
  if (correct >= 5) {
    print("당첨 여부 : 1등");
  } else if (correct == 4) {
    print("당첨 여부 : 2등");
  } else if (correct == 3) {
    print("당첨 여부 : 3등");
  } else {
    print("당첨 여부 : 실패");
  }
  myNumbers.clear();
  print("현재 발급한 로또 번호 : $myNumbers");
}
