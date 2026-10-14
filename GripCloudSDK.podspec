#
# Be sure to run `pod lib lint TestLiveKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GripCloudSDK'
  s.version          = '1.0.0'
  s.summary          = 'GripCloud iOS SDK — Live/VOD hybrid player with native AVPlayer and WKWebView.'

  s.description      = <<-DESC
    GripCloud iOS SDK provides a hybrid live/VOD player that combines native AVPlayer (HLS)
    with WKWebView for seamless live commerce experiences. Supports fullscreen, floating
    window, and Picture-in-Picture (PiP) display modes.
    Compatible with Swift Package Manager and CocoaPods.
                       DESC

  s.homepage         = 'https://www.gripcloud.show'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                          Copyright 2024 All Rights Reserved By GripCloud
                          LICENSE
                        }
  s.author           = { 'hyunsoo1015' => 'hyunsoo@gripcorp.co' }
  s.source           = { :http => "https://repo.gripcloud.show/binary/ios/1.0.0/GripCloudSDK.xcframework.zip", :type => :zip, :sha256 => "af3b7eaa78b7cd9e4a4495801ca9e64f027b412f7b9e42c8be09b2ee6c7e4087" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
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
