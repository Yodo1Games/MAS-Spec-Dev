Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationTencent'
  s.version = '5.0.0-dev.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Tencent adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
  
  s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.1/iOS/Dev/Yodo1MasMediationTencent-5.0.0-dev.1.zip' }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '13.0'
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
    sub.frameworks = 'StoreKit', 'Security','CoreTelephony', 'AdSupport','CoreLocation', 'QuartzCore' ,'SystemConfiguration', 'AVFoundation'
    sub.weak_frameworks = 'WebKit'
    sub.libraries = 'xml2', 'z'
    sub.resource = s.name + '/Assets/**/*'
    sub.source_files = s.name + '/Classes/**/*'
    sub.public_header_files = s.name + '/Classes/**/*.h'
    sub.dependency 'Yodo1MasCore', '5.0.0-dev.1'
    sub.dependency 'GDTMobSDK', '4.15.90'
  end
  #  s.subspec 'AppLovin' do |sub|
  #    sub.source_files = s.name + '/Custom/**/*'
  #    sub.public_header_files = s.name + '/Custom/**/*.h'
  #    sub.dependency 'Yodo1MasMediationTencent/Core', '5.0.0'
  #    sub.dependency 'AppLovinSDK', '13.6.1'
  #    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationTencentGDTAdapter.xcframework'
  #  end
  s.subspec 'ToBid' do |sub|
    sub.dependency 'Yodo1MasMediationTencent/Core', '5.0.0-dev.1'
    sub.dependency 'ToBid-iOS/ToBidSDK', '5.7.3'
    sub.vendored_frameworks = s.name + '/Lib/WindMillGDTAdapter.xcframework'
  end
end
