#
# Be sure to run `pod lib lint Yodo1MasMediationYandex.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationYandex'
s.version = '4.14.2-dev.4'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.homepage = 'https://www.yodo1.com/'
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.summary = 'Yandex adapter used for mediation with the Yodo1 MAS SDK'
s.description = <<-DESC
This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
DESC

s.source = { :http => 'https://mas-artifacts.yodo1.com/4.14.2-dev.4/iOS/Dev/Yodo1MasMediationYandex-4.14.2-dev.4.zip' }
s.swift_version = '5.7'
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
sub.resource = s.name + '/Assets/**/*'
sub.source_files = s.name + '/Classes/**/*'
sub.public_header_files = s.name + '/Classes/**/*.h'
sub.dependency 'Yodo1MasCore', '4.14.2-dev.4'
sub.dependency 'YandexMobileAds', '7.8.0'

# Yandex is using dynamic versions of the following libraries to avoid exceptions and lock version numbers
sub.dependency 'AppMetricaCore', '5.8.2'
sub.dependency 'AppMetricaCrashes', '5.8.2'
sub.dependency 'DivKitBinaryCompatibilityFacade', '4.5.0'

end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationYandex/Core', '4.14.2-dev.4'
sub.dependency 'AppLovinSDK', '13.0.1'
sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationYandexAdapter.xcframework'
end
end
