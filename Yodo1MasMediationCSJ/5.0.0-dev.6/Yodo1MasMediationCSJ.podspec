Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationCSJ'
  s.version = '5.0.0-dev.6'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'CSJ adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
  
  s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.6/iOS/Dev/Yodo1MasMediationCSJ-5.0.0-dev.6.zip' }
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
    sub.resource = s.name + '/Assets/**/*'

    sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
    sub.dependency "Yodo1MasCore", '5.0.0-dev.6'
    sub.dependency 'Ads-CN/BUAdSDK', '7.8.0.5'
    sub.dependency 'Ads-CN/CSJMediation-Only', '7.8.0.5'
  end
  #  s.subspec 'AppLovin' do |sub|
  #    sub.dependency 'Yodo1MasMediationCSJ/Core', '5.0.0'
  #    sub.dependency 'AppLovinSDK', '13.6.4'
  #    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationCSJAdapter.xcframework'
  #  end
  s.subspec 'ToBid' do |sub|
    sub.dependency "Yodo1MasMediationCSJ/Core", '5.0.0-dev.6'
    sub.dependency "ToBid-iOS-RC/ToBidSDK", '5.10.1'
    sub.vendored_frameworks = s.name + '/Lib/WindMillCSJAdapter.xcframework', s.name + '/Lib/WindMillGroMoreAdapter.xcframework'
  end
end
