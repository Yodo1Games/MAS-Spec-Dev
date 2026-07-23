Pod::Spec.new do |s|
  s.name             = 'Yodo1MasFull'
  s.version = '5.0.0-dev.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'Yodo1 MAS full edition SDK for iOS'
  s.description      = <<-DESC
  Yodo1 MAS full edition SDK for iOS, inlucde all adapters.
  DESC
  
  s.source = { :http => 'https://mas-artifacts.yodo1.com/5.0.0-dev.1/iOS/Dev/Yodo1MasFull-5.0.0-dev.1.zip' }
  s.swift_version    = '5.0'
  s.swift_versions   = '5.0'
  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.frameworks = 'UIKit', 'Foundation'
  s.resource = s.name + '/Assets/**/*'
  #  s.source_files = s.name + '/Classes/**/*'
  
  s.dependency 'Yodo1MasCore', '5.0.0-dev.1'
  
  # Google AdMob
  s.dependency 'Yodo1MasMediationAdMob/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationAdMob/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationAdMob/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationAdMob/TopOn', '5.0.0-dev.1'

  # AppLovin
  s.dependency 'Yodo1MasMediationApplovin/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationApplovin/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationApplovin/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationApplovin/TopOn', '5.0.0-dev.1'

  # BidMachine
  s.dependency 'Yodo1MasMediationBidMachine/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBidMachine/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBidMachine/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBidMachine/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBidMachine/TopOn', '5.0.0-dev.1'

  # Bigo Ads
  s.dependency 'Yodo1MasMediationBigo/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBigo/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBigo/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationBigo/TopOn', '5.0.0-dev.1'

  # CSJ
#  s.dependency 'Yodo1MasMediationCSJ/Core', '5.0.0'
#  s.dependency 'Yodo1MasMediationCSJ/ToBid', '5.0.0'

  # Meta Audience Network(Facebook)
  s.dependency 'Yodo1MasMediationFacebook/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFacebook/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFacebook/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFacebook/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFacebook/TopOn', '5.0.0-dev.1'

  # DT Exchange(Fyber)
  s.dependency 'Yodo1MasMediationFyber/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFyber/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFyber/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFyber/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationFyber/TopOn', '5.0.0-dev.1'

  # InMobi
  s.dependency 'Yodo1MasMediationInMobi/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationInMobi/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationInMobi/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationInMobi/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationInMobi/TopOn', '5.0.0-dev.1'

  # ironSource
  s.dependency 'Yodo1MasMediationIronSource/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationIronSource/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationIronSource/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationIronSource/TopOn', '5.0.0-dev.1'

  # Mintegral
  s.dependency 'Yodo1MasMediationMintegral/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMintegral/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMintegral/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMintegral/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMintegral/TopOn', '5.0.0-dev.1'

  # Moloco
  s.dependency 'Yodo1MasMediationMoloco/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMoloco/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMoloco/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationMoloco/IronSource', '5.0.0-dev.1'
  
  # Pangle
  s.dependency 'Yodo1MasMediationPangle/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationPangle/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationPangle/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationPangle/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationPangle/TopOn', '5.0.0-dev.1'

  # Tencent
#  s.dependency 'Yodo1MasMediationTencent/Core', '5.0.0'
#  s.dependency 'Yodo1MasMediationTencent/ToBid', '5.0.0'

  # ToBid
#  s.dependency 'Yodo1MasMediationToBid/Core', '5.0.0'

  # TopOn
  s.dependency 'Yodo1MasMediationTopOn/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationTopOn/TopOn', '5.0.0-dev.1'

  # Unity Ads
  s.dependency 'Yodo1MasMediationUnityAds/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationUnityAds/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationUnityAds/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationUnityAds/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationUnityAds/TopOn', '5.0.0-dev.1'

  # Liftoff Monetize(Vungle)
  s.dependency 'Yodo1MasMediationVungle/Core', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationVungle/AdMob', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationVungle/AppLovin', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationVungle/IronSource', '5.0.0-dev.1'
  s.dependency 'Yodo1MasMediationVungle/TopOn', '5.0.0-dev.1'

  # Yandex
#  s.dependency 'Yodo1MasMediationYandex/Core', '5.0.0'
#  s.dependency 'Yodo1MasMediationYandex/AppLovin', '5.0.0'
#  s.dependency 'Yodo1MasMediationYandex/IronSource', '5.0.0'
#  s.dependency 'Yodo1MasMediationYandex/TopOn', '5.0.0'
    
  # YSO Network
#  s.dependency 'Yodo1MasMediationYso/Core', '5.0.0'
#  s.dependency 'Yodo1MasMediationYso/AppLovin', '5.0.0'

  # Yodo1 Test Ads
  s.dependency 'Yodo1MasMediationYodo1', '5.0.0-dev.1'
end
