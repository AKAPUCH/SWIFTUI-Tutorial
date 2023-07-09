# section 1 : checking your tools

xcode 설정 및 [단축키](./assets/XcodeCheatsheet.pdf)를 경험하며 친숙해지는 섹션

**다른 섹션의 xcode, SWIFTUI의 기초 팁도 추가될 수 있습니다.**

### 프로젝트 설정 및 단축키

프로젝트 최초 생성 시 organization Identifier는 반드시 역 DNS로 입력하기 - 앱 번들에서 인식하기 위해서

파일 확장자가 표시되지 않을 경우, 설정-일반-File Extensions의 Show All 설정을 통해 다시 보여지게 할 수 있다.

프로젝트 네비게이터(왼쪽 창) 숨기기 : 커맨드 + 숫자 0
인스펙터(오른쪽 창) 숨기기 : 옵션 커맨드 + 숫자 0
디버그 영역(아래) 숨기기 : 쉬프트 커맨드 + Y
캔버스(프리뷰 영역) 숨기기 : 옵션 커맨드 엔터

### SWIFTUI

모든 SWIFTUI 구조체는 View 프로토콜을 반환하는 계산 속성이 존재

원하는 뷰를 선택하고 Attributes Inspector에서 또는 컨트롤+옵션+클릭을 통해 속성들을 검색하고 추가하기 가능

프리뷰의 선택가능 모드에서 원하는 View를 더블 클릭시 해당하는 코드 영역도 선택됨.

appdelegate, scenedelegate는 더이상 없고 @main 어노테이션이 되어 있는 구조체가 최초 진입점이 됨.
```swift
@main
struct MyFirstApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
```