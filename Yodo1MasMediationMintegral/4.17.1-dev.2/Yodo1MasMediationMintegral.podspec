#
# Be sure to run `pod lib lint Yodo1MasMediationMintegral.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationMintegral'
s.version = '4.17.1-dev.2'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.homepage = 'https://www.yodo1.com/'
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.summary = 'Mintegral adapter used for mediation with the Yodo1 MAS SDK'
s.description = <<-DESC
This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
DESC

s.source = { :http => 'https://mas-artifacts.yodo1.com/4.17.1-dev.2/iOS/Dev/Yodo1MasMediationMintegral-4.17.1-dev.2.zip' }
s.swift_version = '5.0'

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
"VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
}
s.subspec 'Core' do |sub|
sub.resource = s.name + '/Assets/Yodo1MasMintegral.plist'

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasCore', '4.17.1-dev.2'
sub.dependency 'MintegralAdSDK/All', '7.7.9'
end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationMintegral/Core', '4.17.1-dev.2'
sub.dependency 'AppLovinSDK', '13.3.1'
sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationMintegralAdapter.xcframework'
end
s.subspec 'AdMob' do |sub|

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasMediationMintegral/Core', '4.17.1-dev.2'
sub.dependency 'Google-Mobile-Ads-SDK', '12.9.0'
sub.vendored_frameworks = s.name + '/Lib/MintegralAdapter.xcframework'
end
s.subspec 'IronSource' do |sub|
sub.dependency 'Yodo1MasMediationMintegral/Core', '4.17.1-dev.2'
sub.dependency 'IronSourceSDK', '8.10.0.0'
sub.vendored_frameworks = s.name + '/Lib/ISMintegralAdapter.xcframework'
end
s.subspec 'TopOn' do |sub|
sub.dependency 'Yodo1MasMediationMintegral/Core', '4.17.1-dev.2'
sub.dependency 'TPNiOS', '6.4.92'
sub.vendored_frameworks = s.name + '/Lib/AnyThinkMintegralAdapter.xcframework'
end
end
