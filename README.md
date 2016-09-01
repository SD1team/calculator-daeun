< Auto Layout >
===================
frame, bound, center 속성을 통해 뷰의 크기와 위치를 조절하는 레이아웃 시스템
---------------------
다양한 화면의 크기와 언어변화에 적응할 수 있는 UI를 만들기 위해 만들어진 기술이므로, 화면의 크기가 점점 다양해지는 요즘에 그 중요도가 높아지고 있는 추세이다.

하드코딩에 비해 월등히 적은 양의 코드로 다양한 화면 크기와 방향에 대응 가능

개발자가 제약을 직접 구성해두면 레이아웃 시스템이 화면의 크기나 방향에 따라 좌표를 자동으로 계산 후, 적용

그러므로 좌표가 아닌 제약을 고려해야 한다.

-
< Constraint , 제약 >
-

간단히 말해, 요구사항.  요구사항을 만족시켜야 함. 누적되는 성질을 갖고 있다. 

각 제약의 우선순위가 같다면, 레이아웃 오류가 발생한다. 그러므로, 새로운 제약을 추가하기 전에 동일한 성격과 우선순위를 가지는 제약이 존재하는지 확인한 후, 업데이트해야 한다.

