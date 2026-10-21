Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationFacebook'
  s.version = '5.0.0-dev.6'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Facebook adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
  
  s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.6/iOS/Dev/Yodo1MasMediationFacebook-5.0.0-dev.6.zip' }
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '15.0'
  s.static_framework = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.subspec 'Core' do |sub|
    sub.resource = s.name + '/Assets/Yodo1MasFacebook.plist'

    sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
    sub.dependency "Yodo1MasCore", '5.0.0-dev.6'
    sub.dependency 'FBAudienceNetwork', '6.22.0'
  end
  s.subspec 'AppLovin' do |sub|
    sub.dependency "Yodo1MasMediationFacebook/Core", '5.0.0-dev.6'
    sub.dependency "AppLovinSDK", '13.6.4'
    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationFacebookAdapter.xcframework'
  end
  s.subspec 'AdMob' do |sub|
    sub.dependency "Yodo1MasMediationFacebook/Core", '5.0.0-dev.6'
    sub.dependency "Google-Mobile-Ads-SDK", '13.11.0'
    sub.vendored_frameworks = s.name + '/Lib/MetaAdapter.xcframework'
  end
#  s.subspec 'IronSource' do |sub|
#    sub.dependency 'Yodo1MasMediationFacebook/Core', '5.0.0'
#    sub.dependency 'IronSourceSDK', '9.6.1.0'
#    sub.vendored_frameworks = s.name + '/Lib/ISFacebookAdapter.xcframework'
#  end
#  s.subspec 'TopOn' do |sub|
#    sub.dependency 'Yodo1MasMediationFacebook/Core', '5.0.0'
#    sub.dependency 'TPNiOS', '6.5.73'
#    sub.vendored_frameworks = s.name + '/Lib/AnyThinkFacebookAdapter.xcframework'
#  end
end
