#
# Be sure to run `pod lib lint Yodo1MasFull.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasFull'
s.version = '4.14.0-dev.4'
s.summary = 'Yodo1 MAS full edition SDK for iOS'
s.swift_version = '5.0'
s.swift_versions = '5.0'

# This description is used to generate tags and improve search results.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Think: What does it do? Why did you write it? What is the focus?
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Try to keep it short, snappy and to the point.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Write the description between the DESC delimiters below.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.14.0-dev.4/iOS/Dev/Yodo1MasFull-4.14.0-dev.4.zip' }
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

s.dependency 'Yodo1MasCore', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationAdMob', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationApplovin', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationFyber', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationBidMachine', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationBigo', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationIronSource', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationFacebook', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationInMobi', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationMintegral', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationMoloco', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationPangle', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationCSJ', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationTencent', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationToBid', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationUnityAds', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationVungle', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationYandex', '4.14.0-dev.4'
s.dependency 'Yodo1MasMediationYodo1', '4.14.0-dev.4'
end
