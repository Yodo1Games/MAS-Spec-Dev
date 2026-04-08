Pod::Spec.new do |s|
  s.name             = 'Yodo1MasFull'
s.version = '4.18.0-dev.1'
s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Yodo1 MAS full edition SDK for iOS'
  s.description      = <<-DESC
  Yodo1 MAS full edition SDK for iOS, inlucde all adapters.
  DESC
  
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.18.0-dev.1/iOS/Dev/Yodo1MasFull-4.18.0-dev.1.zip' }
  s.swift_version    = '5.0'
  s.swift_versions   = '5.0'
  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "VALID_ARCHS" => "arm64 arm64e x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.frameworks = 'UIKit', 'Foundation'
  s.resource = s.name + '/Assets/**/*'
  #  s.source_files = s.name + '/Classes/**/*'
  
s.dependency 'Yodo1MasCore', '4.18.0-dev.1'
  
  # Google AdMob
s.dependency 'Yodo1MasMediationAdMob/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationAdMob/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationAdMob/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationAdMob/TopOn', '4.18.0-dev.1'

  # AppLovin
s.dependency 'Yodo1MasMediationApplovin/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationApplovin/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationApplovin/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationApplovin/TopOn', '4.18.0-dev.1'

  # BidMachine
s.dependency 'Yodo1MasMediationBidMachine/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBidMachine/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBidMachine/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBidMachine/TopOn', '4.18.0-dev.1'

  # Bigo Ads
s.dependency 'Yodo1MasMediationBigo/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBigo/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBigo/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationBigo/TopOn', '4.18.0-dev.1'

  # CSJ
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'

  # Meta Audience Network(Facebook)
s.dependency 'Yodo1MasMediationFacebook/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFacebook/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFacebook/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFacebook/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFacebook/TopOn', '4.18.0-dev.1'

  # DT Exchange(Fyber)
s.dependency 'Yodo1MasMediationFyber/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFyber/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFyber/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFyber/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationFyber/TopOn', '4.18.0-dev.1'

  # InMobi
s.dependency 'Yodo1MasMediationInMobi/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationInMobi/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationInMobi/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationInMobi/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationInMobi/TopOn', '4.18.0-dev.1'

  # ironSource
s.dependency 'Yodo1MasMediationIronSource/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationIronSource/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationIronSource/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationIronSource/TopOn', '4.18.0-dev.1'

  # Mintegral
s.dependency 'Yodo1MasMediationMintegral/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMintegral/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMintegral/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMintegral/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMintegral/TopOn', '4.18.0-dev.1'

  # Moloco
s.dependency 'Yodo1MasMediationMoloco/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMoloco/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMoloco/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationMoloco/IronSource', '4.18.0-dev.1'
  
  # Pangle
s.dependency 'Yodo1MasMediationPangle/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationPangle/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationPangle/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationPangle/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationPangle/TopOn', '4.18.0-dev.1'

  # Tencent
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'

  # ToBid
# s.dependency, '4.18.0-dev.1'

  # TopOn
s.dependency 'Yodo1MasMediationTopOn/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationTopOn/TopOn', '4.18.0-dev.1'

  # Unity Ads
s.dependency 'Yodo1MasMediationUnityAds/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationUnityAds/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationUnityAds/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationUnityAds/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationUnityAds/TopOn', '4.18.0-dev.1'

  # Liftoff Monetize(Vungle)
s.dependency 'Yodo1MasMediationVungle/Core', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationVungle/AdMob', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationVungle/AppLovin', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationVungle/IronSource', '4.18.0-dev.1'
s.dependency 'Yodo1MasMediationVungle/TopOn', '4.18.0-dev.1'

  # Yandex
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'
    
  # YSO Network
# s.dependency, '4.18.0-dev.1'
# s.dependency, '4.18.0-dev.1'

  # Yodo1 Test Ads
s.dependency 'Yodo1MasMediationYodo1', '4.18.0-dev.1'
end
