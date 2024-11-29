#
# Be sure to run `pod lib lint Yodo1MasMediationBidMachine.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationBidMachine'
s.version = '4.14.2-dev.2'
s.summary = 'BidMachine adapter used for mediation with the Yodo1 MAS SDK'
s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationTradPlus Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasMediationYso adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Think: What does it do? Why did you write it? What is the focus?
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationTradPlus Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasMediationYso adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Try to keep it short, snappy and to the point.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationTradPlus Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasMediationYso adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Write the description between the DESC delimiters below.
# Yodo1MasCN Yodo1MasCore Yodo1MasFull Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationBidMachine Yodo1MasMediationBigo Yodo1MasMediationCSJ Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMoloco Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationToBid Yodo1MasMediationTradPlus Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasMediationYso adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh mas.py ossutilmac64 podspec.sh release-all.sh release-one-with-codes.sh release-one-with-framework.sh version-all.sh version-one.sh xcodebuild-framework.sh Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.14.2-dev.2/iOS/Dev/Yodo1MasMediationBidMachine-4.14.2-dev.2.zip' }
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
sub.dependency 'Yodo1MasCore', '4.14.2-dev.2'
sub.dependency 'BidMachine', '3.1.1'
end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationBidMachine/Core', '4.14.2-dev.2'
sub.dependency 'AppLovinSDK', '13.0.1'
sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationBidMachineAdapter.xcframework'
end
# s.subspec 'AdMob' do |sub|
# sub.dependency, '4.14.2-dev.2'
# sub.dependency, '11.12.0'
# end
# s.subspec 'IronSource' do |sub|
# sub.dependency, '4.14.2-dev.2'
# sub.dependency 'IronSourceSDK', '8.5.0.0'
# end
end
