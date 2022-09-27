# Be sure to run `pod lib lint Upollo.podspec'

Pod::Spec.new do |s|
  s.name             = 'Upollo'
  s.version          = '0.3.0'
  s.summary          = 'Upollo iOS library'
  s.license          = { :type => 'Proprietary', :file => 'LICENSE.md' }
  s.description      = <<-DESC
Turn repeat signups and account sharers into paying customers while keeping bad actors out.
DESC

  s.author           = { 'Upollo Team' => 'cocoapods@upollo.ai' }
  s.homepage         = 'https://github.com/upollo/upollo-ios'
  s.source           = { :git => 'https://github.com/upollo/upollo-ios.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/upolloai'

  s.source_files = 'Upollo/**/*'

  s.ios.deployment_target = '12.0'
  s.swift_versions = '5.3'

  s.dependency 'SwiftProtobuf', '~> 1.19'
  s.dependency 'UpolloCore', '0.3.0'
end
