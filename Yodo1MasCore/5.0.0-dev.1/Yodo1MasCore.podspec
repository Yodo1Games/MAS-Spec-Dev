Pod::Spec.new do |s|
  s.name             = 'Yodo1MasCore'
s.version = '5.0.0-dev.1'
s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Yodo1MasCore for iOS'
  s.description      = <<-DESC
  Yodo1MasCore is a core module for Yodo1 MAS (Managed Ad Services) iOS SDK.
  DESC
s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.1/iOS/Dev/Yodo1MasCore-5.0.0-dev.1.zip' }
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '13.0'
  
  s.static_framework = true
  s.requires_arc = true
  
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.resources = s.name + '/Assets/Yodo1MasCore.bundle', s.name + '/Assets/Yodo1MasCore.plist'

s.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
  # Headers that are internal SDK implementation details (shared only between the
  # pod's own source files) should live with a `+Internal.h` suffix and are kept
  # private so pod consumers cannot import them. They remain reachable via the
  # pod target's build settings, so other files inside this pod still compile.
  s.private_header_files = s.name + '/Classes/**/*+Internal.h'
  s.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Security'
  s.weak_frameworks = 'AppTrackingTransparency'
  s.libraries  = 'sqlite3', 'z', 'resolv'
  s.dependency 'YDYAFNetworking'
  s.dependency 'YYModel'
  s.dependency 'GoogleUserMessagingPlatform'
  s.dependency 'YDYThinkingSDK', '2.8.0.4'
  s.dependency 'AppHarbrSDK', '>= 1.33.0', '< 2.0'
end
