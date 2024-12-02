#
# Be sure to run `pod lib lint Yodo1MasFull.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasFull'
s.version = '4.14.2-dev.3'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.homepage = 'https://www.yodo1.com/'
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.summary = 'Yodo1 MAS full edition SDK for iOS'
s.description = <<-DESC
Yodo1 MAS full edition SDK for iOS, inlucde all adapters.
DESC

s.source = { :http => 'https://mas-artifacts.yodo1.com/4.14.2-dev.3/iOS/Dev/Yodo1MasFull-4.14.2-dev.3.zip' }
s.swift_version = '5.0'
s.swift_versions = '5.0'
s.ios.deployment_target = '13.0'
s.static_framework = true
s.xcconfig = {
"OTHER_LDFLAGS" => "-ObjC",
"GENERATE_INFOPLIST_FILE" => "YES"
}
s.pod_target_xcconfig = {
"VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
"VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
"VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
}
s.frameworks = 'UIKit', 'Foundation'
s.resource = s.name + '/Assets/**/*'
# s.source_files = s.name + '/Classes/**/*'

s.dependency 'Yodo1MasCore', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationAdMob', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationApplovin', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationBidMachine', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationBigo', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationCSJ', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationFacebook', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationFyber', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationInMobi', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationIronSource', '4.14.2-dev.3'
# s.dependency, '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationMintegral', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationMoloco', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationPangle', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationTencent', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationToBid', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationTradPlus', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationUnityAds', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationVungle', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationYandex', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationYodo1', '4.14.2-dev.3'
s.dependency 'Yodo1MasMediationYso', '4.14.2-dev.3'
end
