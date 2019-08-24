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
  spec.version      = "0.0.1"
  spec.summary      = "Example POD MyFramework."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = "http://whatever/MyFramework"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "Copyleft"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "dmorozov" => "den.morozov@gmail.com" }
  # Or just: spec.author    = "dmorozov"
  # spec.authors            = { "dmorozov" => "den.morozov@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/dmorozov"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :path => "." }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

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
  spec.vendored_frameworks = 'Frameworks/BaduUI'
  spec.preserve_paths = "Frameworks/BaduUI"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true
  #s.preserve_path = "${POD_ROOT}/TestLib/BridgingHeader.h"
  #s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => '${POD_ROOT}/TestLib/BridgingHeader.h' } 

  spec.xcconfig = {
    # "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2"
    # "FRAMEWORK_SEARCH_PATHS" => "/opt/j2objc/frameworks",
    # "LIBRARY_SEARCH_PATHS" => "/opt/j2objc/lib",
    #'SWIFT_OBJC_BRIDGING_HEADER' => 'ExamplePod/Sources/ExamplePod.h'
    'SWIFT_INCLUDE_PATHS' => "$(SRCROOT)/Frameworks/BaduUI"
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
