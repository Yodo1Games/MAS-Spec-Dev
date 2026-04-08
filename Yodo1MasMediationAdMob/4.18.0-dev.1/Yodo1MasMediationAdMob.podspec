Pod::Spec.new do |s|
  s.name             = 'Yodo1MasMediationAdMob'
s.version = '4.18.0-dev.1'
s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.yodo1.com/'
  s.author           = { 'Yodo1Games' => 'devadmin@yodo1.com' }
  s.summary          = 'AdMob adapter used for mediation with the Yodo1 MAS SDK'
  s.description      = <<-DESC
  This is an adapter to be used in conjunction with the Yodo1 MAS SDK.
  DESC
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.18.0-dev.1/iOS/Dev/Yodo1MasMediationAdMob-4.18.0-dev.1.zip' }
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '13.0'
  s.static_framework = true
  
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
    "GENERATE_INFOPLIST_FILE" => "YES"
  }
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "VALID_ARCHS" => "arm64 arm64e x86_64",
    "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e",
    "VALID_ARCHS[sdk=iphonesimulator*]" => "arm64 x86_64"
  }
  s.subspec 'Core' do |sub|
    sub.resources = s.name + '/Assets/Yodo1MasAdMob.plist'
    sub.resource_bundles = {
      'Yodo1MasMediationAdMobResources' => [s.name + '/Assets/**/*.xib']
    }
    sub.script_phases = [
    {
      :name => 'Fix Bundle Info.plist',
      :script => <<-SCRIPT
      find "${PODS_CONFIGURATION_BUILD_DIR}" -name "*.bundle" | while read bundle; do
        plist="${bundle}/Info.plist"
        if [ -f "${plist}" ]; then
          /usr/libexec/PlistBuddy -c "Delete :CFBundleExecutable" "${plist}" 2>/dev/null
          /usr/libexec/PlistBuddy -c "Set :CFBundlePackageType BNDL" "${plist}" 2>/dev/null
        fi
      done
      SCRIPT
    }
    ]

sub.vendored_frameworks = "#{s.name}/#{s.name}.xcframework"
sub.dependency 'Yodo1MasCore', '4.18.0-dev.1'
sub.dependency 'Google-Mobile-Ads-SDK', '13.1.0'
  end
  s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationAdMob/Core', '4.18.0-dev.1'
sub.dependency 'AppLovinSDK', '13.5.1'
    sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationGoogleAdapter.xcframework', s.name + '/Lib/AppLovinMediationGoogleAdManagerAdapter.xcframework'
  end
  s.subspec 'IronSource' do |sub|
sub.dependency 'Yodo1MasMediationAdMob/Core', '4.18.0-dev.1'
sub.dependency 'IronSourceSDK', '9.3.0.0'
    sub.vendored_frameworks = s.name + '/Lib/ISAdMobAdapter.xcframework'
  end
  s.subspec 'TopOn' do |sub|
sub.dependency 'Yodo1MasMediationAdMob/Core', '4.18.0-dev.1'
sub.dependency 'TPNiOS', '6.5.34'
    sub.vendored_frameworks = s.name + '/Lib/AnyThinkAdmobAdapter.xcframework'
  end
end
