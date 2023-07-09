# 페이지 구현하기

HITT 앱은 좌우로 스와이프할 수 있는 5개의 페이지로 구현되어 있습니다.

## TabView
UIKit에서는 `UITabBarController`로 구현할 수 있었고 SWIFTUI에서는 `TabView`를 사용합니다.

Stack처럼 View를 나열 시, 좌우로 전환할 수 있는 페이지 형태로 구현됩니다.
```swift
struct ContentView: View {
  var body: some View {
    TabView {
        Text("이렇게 쌓여있으면")
        Text("Stack은 한 화면에 다 표현되나,")
        Text("TabView는 UITabBarController처럼")
        Text("좌우로 스와이프 또는 탭버튼 클릭을 통해 전환")
        Text("우리가 익숙한 페이지 앱 형태가 됩니다.")
    }
  }
}
```
`.tabItem{}` : Text를 할당하여 하단에 탭바 버튼을 생성합니다. 아래 `PageTabViewStyle` 사용 시 필요 없는 속성입니다.

`.tabViewStyle(PageTabViewStyle())` : 아래 탭바 선택 대신 좌우 스와이프를 통해 페이지를 넘기듯이 각 탭 뷰에 접근할 수 있습니다.

`.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))` : 페이지 스타일 탭뷰에서 페이지 구분 점은 흰색이 default이기 때문에, `.always`를 통해 항상 보이도록, 아니면 .never를 통해 절대 안보이도록 할 수 있습니다.

## Stack
ContentView 구조체의 계산 속성 body에 여러 개의 리턴 값 작성 시 그 개수만큼 ContentView가 추가 생성됩니다. -> 페이지 방식과 다름

따라서 표시할 뷰가 여러 개라면, 원하는 스택 유형으로 묶어줘야 합니다.
### VStack
View들을 수직축으로 고정해줄 수 있는 컨테이너 뷰
### HStack
View들을 수평축으로 고정해줄 수 있는 컨테이너 뷰

## ForEach
iterable한 객체에서 내부 프로퍼티로 반복할 동작이 사용하던 `.forEach{}`를 안다면 쉽습니다.

forEach가 이제는 고차함수가 아닌 클로저 내부 뷰를 반복하는 구조체라고 생각하면 됩니다.

파이썬 range와 유사하게 끝이 닫힌 구간입니다.(x..<y, x이상 y미만)
