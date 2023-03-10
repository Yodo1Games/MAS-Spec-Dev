
#
# Be sure to run `pod lib lint Yodo1MasLite.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasLite'
s.version = '4.8.8-alpha.1'
s.summary = 'Yodo1 MAS Lite edition SDK for iOS'
s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
# Podfile README.md Yodo1MasSdk Yodo1MasSdkDemo Yodo1MasSdkDemo.xcodeproj Yodo1MasSdk_Deprecated build config.txt Think: What does it do? Why did you write it? What is the focus?
# Podfile README.md Yodo1MasSdk Yodo1MasSdkDemo Yodo1MasSdkDemo.xcodeproj Yodo1MasSdk_Deprecated build config.txt Try to keep it short, snappy and to the point.
# Podfile README.md Yodo1MasSdk Yodo1MasSdkDemo Yodo1MasSdkDemo.xcodeproj Yodo1MasSdk_Deprecated build config.txt Write the description between the DESC delimiters below.
# Podfile README.md Yodo1MasSdk Yodo1MasSdkDemo Yodo1MasSdkDemo.xcodeproj Yodo1MasSdk_Deprecated build config.txt Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.8.8-alpha.1/iOS/Dev/Yodo1MasLite-4.8.8-alpha.1.zip' }

s.xcconfig = {
"OTHER_LDFLAGS" => "-ObjC",
"GENERATE_INFOPLIST_FILE" => "YES"
}
s.pod_target_xcconfig = {
"VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
"VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
"VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
}
s.ios.deployment_target = '12.0'
s.static_framework = true
s.frameworks = 'UIKit', 'Foundation'
s.source_files = 'Mediation/Classes/Google/**/*', 'Mediation/Classes/AppLovin/**/*', 'Mediation/Classes/Facebook/**/*', 'Mediation/Classes/UnityAds/**/*', 'Mediation/Classes/Yodo1/**/*'
s.public_header_files = 'Mediation/Classes/Google/**/*.h', 'Mediation/Classes/AppLovin/**/*.h', 'Mediation/Classes/Facebook/**/*.h', 'Mediation/Classes/UnityAds/**/*.h', 'Mediation/Classes/Yodo1/**/*.h'
s.vendored_frameworks = 'Mediation/Lib/AppLovin/AppLovinMediationFacebookAdapter.xcframework', 'Mediation/Lib/AppLovin/AppLovinMediationGoogleAdapter.xcframework', 'Mediation/Lib/AppLovin/AppLovinMediationGoogleAdManagerAdapter.xcframework', 'Mediation/Lib/AppLovin/AppLovinMediationUnityAdsAdapter.xcframework', 'Mediation/Lib/Google/AppLovinAdapter.xcframework', 'Mediation/Lib/Google/MetaAdapter.xcframework', 'Mediation/Lib/Google/UnityAdapter.xcframework'
s.resource = 'Mediation/Assets/**/*'
s.dependency 'Yodo1MasCore', '4.8.8-alpha.1'
s.dependency 'AppLovinSDK', '11.8.1'
s.dependency 'FBAudienceNetwork', '6.12.0'
s.dependency 'Google-Mobile-Ads-SDK', '10.2.0'
s.dependency 'UnityAds', '4.6.0'
end
