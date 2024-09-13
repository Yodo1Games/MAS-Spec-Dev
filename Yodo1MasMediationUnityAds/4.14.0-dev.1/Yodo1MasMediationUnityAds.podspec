#
# Be sure to run `pod lib lint Yodo1AdvertAdMob.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationUnityAds'
s.version = '4.14.0-dev.1'
s.summary = 'UnityAds adapter used for mediation with the Yodo1 MAS SDK'
s.swift_version = '5.0'
s.swift_versions = '5.0'

# This description is used to generate tags and improve search results.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVerve Yodo1MasMediationVungle Yodo1MasMediationYSONetwork Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Think: What does it do? Why did you write it? What is the focus?
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVerve Yodo1MasMediationVungle Yodo1MasMediationYSONetwork Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Try to keep it short, snappy and to the point.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVerve Yodo1MasMediationVungle Yodo1MasMediationYSONetwork Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Write the description between the DESC delimiters below.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVerve Yodo1MasMediationVungle Yodo1MasMediationYSONetwork Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.14.0-dev.1/iOS/Dev/Yodo1MasMediationUnityAds-4.14.0-dev.1.zip' }
s.ios.deployment_target = '12.0'
s.static_framework = true
s.xcconfig = {
"OTHER_LDFLAGS" => "-ObjC",
"GENERATE_INFOPLIST_FILE" => "YES"
}
s.pod_target_xcconfig = {
"DEFINES_MODULE" => "YES",
"VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
"VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
"VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
}
s.subspec 'Core' do |sub|
sub.resource = s.name + '/Assets/**/*'

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasCore', '4.14.0-dev.1'
sub.dependency 'UnityAds', '4.12.2'
end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationUnityAds/Core', '4.14.0-dev.1'
sub.dependency 'AppLovinSDK', '12.6.1'
sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationUnityAdsAdapter.xcframework'
end
# s.subspec 'AdMob' do |sub|
# sub.dependency, '4.14.0-dev.1'
# sub.dependency 'Google-Mobile-Ads-SDK', '11.9.0'
# sub.vendored_frameworks = s.name + '/Lib/UnityAdapter.xcframework'
# end
# s.subspec 'IronSource' do |sub|
# sub.dependency, '4.14.0-dev.1'
# sub.dependency 'IronSourceSDK', '8.3.0.0'
# sub.vendored_frameworks = s.name + '/Lib/ISUnityAdsAdapter.xcframework'
# end
end
