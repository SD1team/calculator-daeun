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


-
< Auto Layout 의 장점 >
-
1. 화면 크기와 디바이스 방향에 따라 유연하게 업데이트 되는 UI를 비교적 쉽게 구현할 수 있다.
2. 향후 새로운 해상도의 디바이스가 출시되더라도 업데이트 없이 일관된 UI를 유지할 수 있다.
3. 화면 좌표를 직접 계산하거나 수많은 분기 코드를 작성할 필요가 없다.
4. 우선순위와 활성화 속성을 활용하여 특정 조건에 따라 업데이트 되는 UI를 구현할 수 있다.
5. 지역화 문자열을 사용할 때, 문자열의 너비에 따라 버튼이나 레이블의 너비가 자동으로 업데이트 된다.
6. Content Hugging과 Compression Resistance의 우선순위를 조절하여 동적인 UI를 더욱 세부적으로 제어할 수 있다.
7. 뷰 애니매이션, 모션 이펙트와 함께 사용할 수 있다.
8. 동일한 계층구조에 존재하지 않는 뷰 사이의 관계를 설정할 수 있다. 
9. 스토리보드에서 제약을 쉽게 추가할 수 있다. 코드를 통해 런타임에 동적으로 추가, 제거할 수 있다.


####용어정리 
* Content Hugging (콘텐츠 허깅) : 최대 크기에 제한을 두는 것 
* Compression Resistance (압축 제한) : 최소 크기에 제한을 두는 것 

