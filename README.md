# GripCloud iOS SDK

<!-- gripcloud-latest-version:start -->
## Latest Version: `1.1.0`
<!-- gripcloud-latest-version:end -->

GripCloud iOS SDK는 iOS 앱에서 GripCloud 라이브/VOD 플레이어를 사용할 수 있도록 제공되는 SDK입니다.

연동 방법, 옵션, 이벤트, 오류 처리는 **[개발자 문서](https://developers.gripcloud.show/app/ios/)** 를 따라 진행해 주세요. 이 README에는 설치 방법만 적습니다.

## Requirements

* iOS 13.0 이상
* Xcode 16.0 이상
* Swift 5 (언어 모드)

## Installation

Swift Package Manager와 CocoaPods를 동시에 넣으면 같은 프레임워크가 두 번 들어가 링크가 실패합니다. 설치 방식을 바꿀 때는 이전 방식을 먼저 제거하세요.

### Swift Package Manager

Xcode에서 다음 경로로 이동합니다.

```text
File > Add Package Dependencies...
```

아래 Repository URL을 입력하고, 버전 규칙은 **Exact Version** 으로 고정합니다.

```text
https://github.com/gripcorp/gripcloud-ios-sdk.git
```

`GripCloudSDK`를 프로젝트에 추가한 뒤 Swift 코드에서 import 합니다.

```swift
import GripCloudSDK
```

---

### CocoaPods

CocoaPods 중앙 저장소(trunk)에 등록되어 있지 않으므로 `:podspec` 으로 podspec 주소를 지정합니다. `pod 'GripCloudSDK'` 한 줄만 적으면 `Unable to find a specification for GripCloudSDK` 로 설치가 실패합니다.

`Podfile`에 다음 dependency를 추가합니다.

```ruby
pod 'GripCloudSDK', :podspec => 'https://repo.gripcloud.show/binary/ios/1.1.0/GripCloudSDK.podspec'
```

버전을 올릴 때는 주소의 버전을 바꾸고 `pod update GripCloudSDK` 를 실행합니다 — SPM 의 `from:` 과 달리 버전이 고정이라 자동으로 올라가지 않습니다.

이후 아래 명령어를 실행합니다.

```bash
pod install
```

설치 후에는 `.xcodeproj`가 아니라 `Podfile`이 생성한 `.xcworkspace`를 열고, Swift 코드에서 SDK를 import 합니다.

```swift
import GripCloudSDK
```

### User Script Sandboxing (CocoaPods)

CocoaPods로 설치하고 앱 target의 `User Script Sandboxing`(`ENABLE_USER_SCRIPT_SANDBOXING`)이
`Yes`이면 `[CP] Embed Pods Frameworks` 단계가 `Sandbox: rsync ... deny` 오류로 실패합니다.
앱 target의 Build Settings에서 `User Script Sandboxing`을 `No`로 바꾸세요.
(Xcode 26.6, CocoaPods 1.15.2에서 확인했습니다.)

## 다음 단계

[개발자 문서](https://developers.gripcloud.show/app/ios/)의 빠른 시작에서 `partnerKey` 초기화와 플레이어 배치를 이어서 진행하세요.

## AI 개발 도구 활용

Claude Code, Codex 등 AI 개발 도구를 사용하는 경우 아래 프롬프트를 참고할 수 있습니다.

<details>
<summary><strong>Claude Code / Codex용 프롬프트 보기</strong></summary>

<br />

```text
현재 iOS 프로젝트에 GripCloud iOS SDK를 연동하려고 합니다.

연동 가이드(먼저 끝까지 읽고 그대로 따를 것):
https://developers.gripcloud.show/app/ios/

- 가이드와 설치된 SDK의 공개 인터페이스를 근거로 작업하고, API를 추측하지 말 것
- 기존 프로젝트 구조를 유지하고 필요한 코드만 최소 범위로 수정할 것
- 파트너키(partnerKey) 값은 추측하거나 만들지 말고 사용자에게 확인할 것
- 작업이 끝나면 수정한 파일 목록, 사용한 SDK API, 빌드 결과, 실기기 확인이 필요한 항목을 보고할 것
```

</details>
