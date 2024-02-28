## PomodoroConfirmButton 사용하기
```swift
import PomodoroDesignSystem
private lazy var tagButton = PomodoroConfirmButton(title: "test", didTapHandler: tagButtonTapped)
```

```swift
@objc private func tagButtonTapped() {
  tagButton.isEnabled.toggle()
}
```


👉🏻 위 코드 예시처럼 import 한 뒤 PomodoroConfirmButton을 사용해주세요. <br>
👉🏻 버튼에 필요한 button title과 버튼 탭 시 실행돼야 하는 handler를 추가해주세요. <br>
👉🏻 버튼의 위치를 지정해두지 않았기 때문에, auto layout으로 버튼의 위치를 지정해주세요. <br>
👉🏻 버튼의 enable을 컨트롤하고 싶다면, 위 예시와 같이 사용할 수 있습니다 !

<img width="256" alt="스크린샷 2024-02-28 오후 4 37 59" src="https://github.com/HGU-iOS-Study-Group/PomodoroDesignSystem/assets/97924765/d99ba69f-8bb6-4c63-a72e-e56f4402ca4b">


<br>


## Pomodoro Color 사용하기
```swift
import PomodoroDesignSystem
view.backgroundColor = .pomodoro.background
```

👉🏻 위 코드 예시처럼 import PomodoroDesignSystem을 해주세요. <br>
👉🏻 위 예시처럼 .pomodoro를 사용해 해당 디자인 시스템 속성에 접근하여 사용해주세요. <br>

<img width="256" alt="스크린샷 2024-02-28 오후 4 41 28" src="https://github.com/HGU-iOS-Study-Group/PomodoroDesignSystem/assets/97924765/825e4730-736e-4eec-afea-90e44ca8cc75">
