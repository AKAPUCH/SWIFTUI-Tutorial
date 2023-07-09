# 뷰 구조 분리 및 프로토타이핑

이번 섹션은 TabView에 포함되어 있는 뷰들을 파일 형태로 분리하고 구현해보는 것이 목적입니다.
</br>

데이터가 포함된 배열은 모델 group을 만들어 모델 구조체의 전역 속성으로 설정합니다.(가시적인 구현을 위해 extension에서 하면 용이)
</br>

## 하위 뷰 분리
객체에서 Actions(커맨드 클릭) - Extract SubView를 통해 간편하게 하위 뷰를 분리 가능합니다.

<p align = middle><image src = "https://github.com/AKAPUCH/SWIFTUI-Tutorial/assets/116094622/68b6ed1e-fc26-4f7a-8934-dd59e72c871c" width = 80%></image></p>

`.padding()`과 같은 속성을 사용할 때 현재 뷰가 공통 재사용 중이라면 전체 뷰에 영향을 줄 수 있어 잘 선택해야 합니다.

## 프리뷰 레이아웃 변경

아이패드처럼 시뮬레이터 자체 크기가 너무 크고 특정 영역만 보고 싶다면 `.previewLayout(.sizeThatFits)` 활용

```swift
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
```
## GeometryReader

현재 화면의 size,height,width 등 레이아웃에 도움을 줄 수 있는 값을 제공해주는 컨테이너 뷰입니다.
</br>
body 계산 속성 내부에서 최상위 뷰로 설정하여 하위 뷰들의 레이아웃 설정 시 편리하게 사용할 수 있습니다.
