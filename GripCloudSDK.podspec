# GripCloudSDK podspec 원본. 고객사는 이 파일이 아니라 release.sh 가 candidate 에서만 s.source 를
# S3 ZIP 주소(+ sha256)로 바꾼 사본을 `:podspec` 으로 받는다 — 여기 s.source 는 git 태그를 가리킨다.
# s.version 이 버전의 기준이다(release.sh · check-version-consistency.sh 가 정규식으로 읽는다).

Pod::Spec.new do |s|
  s.name             = 'GripCloudSDK'
  s.version          = '1.1.0'
  s.summary          = 'GripCloud iOS SDK — Live/VOD hybrid player with native AVPlayer and WKWebView.'

  s.description      = <<-DESC
    GripCloud iOS SDK provides a hybrid live/VOD player that combines native AVPlayer (HLS)
    with WKWebView for seamless live commerce experiences. Supports fullscreen, floating
    window, and Picture-in-Picture (PiP) display modes.
    Compatible with Swift Package Manager and CocoaPods.
                       DESC

  s.homepage         = 'https://www.gripcloud.show'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                          Copyright 2024-2026 GripCloud. All Rights Reserved.
                          Use of this software is permitted only under a license agreement with GripCloud.
                          LICENSE
                        }
  s.author           = 'GripCloud'
  s.source           = { :http => "https://repo.gripcloud.show/binary/ios/1.1.0/GripCloudSDK.xcframework.zip", :type => :zip, :sha256 => "1480b1e1542285dcc11311c356dd532d163f178778c6bf1b3b4276a7b5e7b5d3" }
  s.vendored_frameworks = 'GripCloudSDK.xcframework'
  s.platform = :ios
  s.swift_version = "5.7"
  s.ios.deployment_target = '13.0'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
