Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationFyber'
s.version = '4.18.0-dev.1'
s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Fyber adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
  
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.18.0-dev.1/iOS/Dev/Yodo1MasMediationFyber-4.18.0-dev.1.zip' }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = { 
    "DEFINES_MODULE" => "YES", 
    "VALID_ARCHS" => "arm64 arm64e x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.subspec 'Core' do |sub|
    sub.resource = s.name + '/Assets/Yodo1MasFyber.plist'

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasCore', '4.18.0-dev.1'
    sub.dependency 'Fyber_Marketplace_SDK', '8.4.6'
  end
  s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationFyber/Core', '4.18.0-dev.1'
sub.dependency 'AppLovinSDK', '13.5.1'
    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationFyberAdapter.xcframework'
  end
  s.subspec 'AdMob' do |sub|
sub.dependency 'Yodo1MasMediationFyber/Core', '4.18.0-dev.1'
sub.dependency 'Google-Mobile-Ads-SDK', '13.1.0'
    sub.vendored_frameworks = s.name + '/Lib/DTExchangeAdapter.xcframework'
  end
  s.subspec 'IronSource' do |sub|
sub.dependency 'Yodo1MasMediationFyber/Core', '4.18.0-dev.1'
sub.dependency 'IronSourceSDK', '9.3.0.0'
    sub.vendored_frameworks = s.name + '/Lib/ISFyberAdapter.xcframework'
  end
  s.subspec 'TopOn' do |sub|
sub.dependency 'Yodo1MasMediationFyber/Core', '4.18.0-dev.1'
sub.dependency 'TPNiOS', '6.5.34'
    sub.vendored_frameworks = s.name + '/Lib/AnyThinkFyberAdapter.xcframework'
  end
end
