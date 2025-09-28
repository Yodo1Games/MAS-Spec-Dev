#
# Be sure to run `pod lib lint Yodo1MasMediationYso.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationYso'
s.version = '4.17.1-dev.1'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.homepage = 'https://www.yodo1.com/'
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.summary = 'YSO Network adapter used for mediation with the Yodo1 MAS SDK'
s.description = <<-DESC
This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
DESC

s.source = { :http => 'https://mas-artifacts.yodo1.com/4.17.1-dev.1/iOS/Dev/Yodo1MasMediationYso-4.17.1-dev.1.zip' }
s.swift_version = '5.0'
s.swift_versions = '5.0'
s.ios.deployment_target = '13.0'
s.static_framework = true
s.xcconfig = {
"OTHER_LDFLAGS" => "-ObjC",
"GENERATE_INFOPLIST_FILE" => "YES"
}
s.pod_target_xcconfig = {
"DEFINES_MODULE" => "YES",
"TARGETED_DEVICE_FAMILY": "1,2",
"VALID_ARCHS": "x86_64 armv7 arm64",
"VALID_ARCHS[sdk=iphoneos*]": "armv7 arm64",
"VALID_ARCHS[sdk=iphonesimulator*]": "arm64"
}
s.subspec 'Core' do |sub|
sub.resource = s.name + '/Assets/**/*'

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasCore', '4.17.1-dev.1'
sub.dependency 'YsoNetworkSDK', '1.1.31'
end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationYso/Core', '4.17.1-dev.1'
sub.dependency 'AppLovinSDK', '13.3.1'
# sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationYSONetworkAdapter.xcframework'

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
end
end
