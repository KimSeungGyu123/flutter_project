void main() {
  print("필수 문제 2번");
  //Map을 사용해 Key,value 정의 후 List에 품목들 넣음
  Map<String, int> prices = {"티셔츠": 10000, "바지": 8000, "모자": 4000};
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  //gpt사용 -> 카트에 담긴 key들의 value를 다 합해서 결과 도출
  int price = 0; //총 합계를 저장할 변수, 처음엔 0으로 시작
  for (String item in cart) {
    //cart에 들어있는 키들을 가져옴, 5번 반복
    price += prices[item] ??= 0;
    /* prices[item] -> Map에서 해당 상품 이름의 가격을 가져옴
       ??= 0 -> 혹시 상품명이 Map에 없으면 0원 처리
       총합 */
  }
  print("장바구니에 $price원 어치를 담으셨네요");
  var discount;
  //총 가격이 2만원이 넘으면 10% 할인
  if (price > 20000) {
    discount = (price * 0.1).toInt(); //gpt사용 -> .toInt() = 소수를 정수로 바꿈
    print("할인된 금액 : $discount원");
  }

  //결제해야 될 최종 금액
  var total = (price - discount);
  print("최종 결제 금액은 $total원 입니다 !");
}
