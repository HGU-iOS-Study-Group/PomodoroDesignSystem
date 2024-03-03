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


<br>


## Pomodoro Popup 사용하기

Pomodoro 프로젝트에서는 Alert, Popup 에 모두 Pomodoro Popup 만을 사용합니다.
`PomodoroPopupBuilder`를 사용해 팝업에 필요한 컴포넌트들을 추가하고 `show(on:)` 메서드를 이용해 팝업을 노출합니다.

dimmed 영역을 탭하면 팝업은 사라지고, 취소 및 확인 버튼에도 팝업을 사라지게 하는 코드가 내장되어있으므로 handler에는 버튼 탭에 대한 동작만 지정해줍니다.

### 사용법

Pomodoro Popup은 타이틀 텍스트, 바디 텍스트, 버튼의 조합입니다.  

#### 타이틀 텍스트 + 바디 텍스트 + 버튼 2개 

<img src="https://github.com/HGU-iOS-Study-Group/PomodoroDesignSystem/assets/46087477/8a1c6498-fe68-4ee4-8648-e5456078cdb1" width=300 >


```swift
import PomodoroDesignSystem
PomodoroPopupBuilder()
    .add(title: "제목")
    .add(body: "내용")
    .add(
        button: .cancellable(
            cancelButtonTitle: "취소",
            confirmButtonTitle: "확인",
            cancelButtonAction: { /* 취소 동작 */ },
            confirmButtonAction: { /* 확인 동작 */ }
        )
    )
    .show(on: self)
```

👉🏻 `add(title:)`, `add(body:)` 메서드를 통해 제목과 바디를 추가합니다. <br>
👉🏻 `add(button:)` 의 `cancellable` 타입을 선택해 버튼 두 개가 제공되는 팝업을 만들 수 있습니다. Action 파라미터에는 버튼이 탭 되었을 때 수행할 동작을 지정합니다. <br>

#### 타이틀 텍스트 + 바디 텍스트 + 버튼 1개 

<img src="https://github.com/HGU-iOS-Study-Group/PomodoroDesignSystem/assets/46087477/b4d533e8-1667-4d45-8335-ce81d8e75374" width=300 >


```swift
import PomodoroDesignSystem
PomodoroPopupBuilder()
    .add(title: "제목")
    .add(body: "내용")
    .add(
        button: .confirm(
            title: "확인",
            action: { /* 확인 동작 */ }
        )
    )
    .show(on: self)
```

👉🏻 `add(title:)`, `add(body:)` 메서드를 통해 제목과 바디를 추가합니다. <br>
👉🏻 `add(button:)` 의 `confirm` 타입을 선택해 버튼 한 개가 제공되는 팝업을 만들 수 있습니다. Action 파라미터에는 버튼이 탭 되었을 때 수행할 동작을 지정합니다. <br>


#### 바디 텍스트 + 버튼 

```swift
import PomodoroDesignSystem
PomodoroPopupBuilder()
    .add(body: "내용")
    .add(
        button: .confirm(
            title: "확인",
            action: { /* 확인 동작 */ }
        )
    )
    .show(on: self)
```

👉🏻 제목 영역이 필요하지 않은 팝업은 `add(title:)` 메서드를 사용하지 않으면 됩니다. <br>


#### 타이틀 텍스트 + 버튼 

```swift
import PomodoroDesignSystem
PomodoroPopupBuilder()
    .add(title: "제목")
    .add(
        button: .confirm(
            title: "확인",
            action: { /* 확인 동작 */ }
        )
    )
    .show(on: self)
```

👉🏻 내용 영역이 필요하지 않은 팝업은 `add(body:)` 메서드를 사용하지 않으면 됩니다. <br>


#### 버튼이 없는 경우
<img src="https://github.com/HGU-iOS-Study-Group/PomodoroDesignSystem/assets/46087477/d2de473a-8363-4ed9-9d9d-c5b30421ebfa" width=300 >

```swift
import PomodoroDesignSystem
PomodoroPopupBuilder()
    .add(title: "제목")
    .add(body: "내용")
    .show(on: self)
```

👉🏻 버튼 영역이 필요하지 않은 팝업은 `add(button:)` 메서드를 사용하지 않거나 noButton 타입을 지정하면 됩니다. <br>
