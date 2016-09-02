=
< iOS Life Cycle 정리 >
=

![lifecycle](http://cfile26.uf.tistory.com/image/15620B3D4EDC536A0F73C9)

###어플 전체의 생명주기

1. 아이폰에서 사용자가 어플리케이션을 Tap 해서 실행
2. 해당 어플리케이션의 main 실행 
 * Objective-C로 엄연히 아랫단은 C언어 기반이므로 main함수로부터 출발
3. main 에서 UIApplicationMain() 실행 
4. AppDelegate 의 applicationDidFinishLaunching: 을 호출
5. applicationDidFinishLaunching이 완료되면  EventLoop로 들어감
6. 이제부터는 개발자가 코드로 구현한 작업들 수행
7. 어플리케이션 종료 명령
8. AppDelegate의 applicationWillTerminate: 호출
9. 어플리케이션 종료


-
iOS View Life Cycle
-
###View Controller 의 생명주기

1. viewDidLoad       : 컨트롤러들을 생성하거나 추가할 때 사용 (단 한번만 호출)
2. viewWillAppear    : 뷰 컨트롤러가 사용자에게 보여지기 직전 호출 (복수 호출 가능) 
3. viewDidAppear     : 복수 호출 가능
4. viewWillDisappear : 해당 뷰 컨트롤러가 사라지기 직전에 호출
5. viewDidDisappear  
6. viewDidUnload     
