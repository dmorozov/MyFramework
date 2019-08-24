use_frameworks!
platform :ios, '10.0'

workspace 'MyFramework.xcworkspace'

target 'MyFrameworkTests' do
  project 'ExamplePod.xcodeproj'
  pod 'MyFramework', :path => './'

  pod 'Quick'
  pod 'Nimble', :inhibit_warnings => true
end


