Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationYandex'
  s.version = '5.0.0-dev.4'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Yandex adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
  
  s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.4/iOS/Dev/Yodo1MasMediationYandex-5.0.0-dev.4.zip' }
  s.swift_versions   = '5.9.0'
  s.swift_version    = '5.9.0'
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
    sub.resource = s.name + '/Assets/**/*'

    sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
    sub.dependency 'Yodo1MasCore', '5.0.0-dev.4'
    sub.dependency 'YandexMobileAds', '8.3.0'
    
    # Yandex is using dynamic versions of the following libraries to avoid exceptions and lock version numbers
    sub.dependency 'AppMetricaAdSupport', '6.5.0'
    sub.dependency 'AppMetricaCore', '6.5.0'
    sub.dependency 'AppMetricaCrashes', '6.5.0'
    sub.dependency 'AppMetricaIDSync', '6.5.0'
    sub.dependency 'AppMetricaLibraryAdapter', '6.5.0'
  end
  s.subspec 'AppLovin' do |sub|
    sub.dependency 'Yodo1MasMediationYandex/Core', '5.0.0-dev.4'
    sub.dependency 'AppLovinSDK', '13.6.4'
    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationYandexAdapter.xcframework'
  end
  s.subspec 'IronSource' do |sub|
    sub.dependency 'Yodo1MasMediationYandex/Core', '5.0.0-dev.4'
    sub.dependency 'IronSourceSDK', '9.3.0.0'
    sub.vendored_frameworks = s.name + '/Lib/ISYandexAdapter.xcframework'
  end
  s.subspec 'TopOn' do |sub|
    sub.dependency 'Yodo1MasMediationYandex/Core', '5.0.0-dev.4'
    sub.dependency 'TPNiOS', '6.5.73'
    sub.vendored_frameworks = s.name + '/Lib/AnyThinkYandexAdapter.xcframework'
  end
end
