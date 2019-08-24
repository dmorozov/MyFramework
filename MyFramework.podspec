#
#  Be sure to run `pod spec lint MyFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "MyFramework"
  spec.version      = "0.0.6"
  spec.summary      = "Example POD MyFramework."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = "https://github.com/dmorozov/MyFramework"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Denis Morozov" => "den.morozov@gmail.com" }

  # spec.source       = { :path => "." }
  spec.source       = { :git => 'https://github.com/dmorozov/MyFramework.git', :tag => spec.version.to_s }

  spec.platform = :ios
  spec.ios.deployment_target = "10.0"
  spec.swift_version = '4.0'

  spec.source_files  = "MyFramework/**/*.{swift,h,m,mm,cpp,c}"
  # spec.public_header_files = "ExamplePod/Sources/**/*.swift"

  # spec.default_subspec = 'all'
  # spec.subspec 'all' do |all|
  #   all.dependency "#{spec.name}/BaduUI"
  # end

  # spec.subspec 'BaduUI' do |baduui|
  #   baduui.source_files = 'ExamplePod/BaduUI/**/*.{h,m}'
  #   # baduui.dependency 'UICKeyChainStore', '2.0.6'
  # end

  spec.frameworks = 'Security'
  spec.osx.frameworks = 'ExceptionHandling'
  #spec.vendored_frameworks = 'Frameworks/BaduUI'
  #spec.preserve_paths = "Frameworks/BaduUI"
  spec.ios.vendored_frameworks = 'BaduUI.framework'

  # spec.requires_arc = true
  #s.preserve_path = "${POD_ROOT}/TestLib/BridgingHeader.h"
  #s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => '${POD_ROOT}/TestLib/BridgingHeader.h' } 

  spec.xcconfig = {
    # "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2"
    # "FRAMEWORK_SEARCH_PATHS" => "/opt/j2objc/frameworks",
    # "LIBRARY_SEARCH_PATHS" => "/opt/j2objc/lib",
    #'SWIFT_OBJC_BRIDGING_HEADER' => 'ExamplePod/Sources/ExamplePod.h'
    #'SWIFT_INCLUDE_PATHS' => "$(SRCROOT)/Frameworks/BaduUI"
  }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.pod_target_xcconfig = {
    #"OTHER_LDFLAGS" => "-ljre_emul -ljre_zip -liconv -lz -lguava -ljavax_inject -ljsr305 -framework Security",
    # "OTHER_LDFLAGS" => "-ljre_emul -ljre_zip -liconv -lz -ljsr305",
    #"FRAMEWORK_SEARCH_PATHS" => "\"$J2OBJC_HOME/frameworks\"",
    #"LIBRARY_SEARCH_PATHS" => "\"$J2OBJC_HOME/lib\"",
    # "FRAMEWORK_SEARCH_PATHS" => "/opt/j2objc/frameworks",
    #"LIBRARY_SEARCH_PATHS" => "/opt/j2objc/lib",

    #"HEADER_SEARCH_PATHS" => "\"$J2OBJC_HOME/include/\"/** \"${PODS_ROOT}/Headers/Public/SquiDB\" \"${PODS_ROOT}/Headers/Public/J2ObjCUnit\" \"${PODS_ROOT}/Headers/Public/J2ObjCGson\" \"${PODS_ROOT}/Headers/Public/J2ObjCAppBase\"",
    #"HEADER_SEARCH_PATHS" => "\"$J2OBJC_HOME/include/\"/**",
    #"ALWAYS_SEARCH_USER_PATHS" => "YES"
    #"VALID_ARCHITECTURES" => "arm64 armv7 armv7s"
  } 
end
