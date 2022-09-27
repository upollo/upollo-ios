# Be sure to run `pod lib lint UpolloCore.podspec'

Pod::Spec.new do |s|
  s.name             = 'UpolloCore'
  s.version          = '0.3.0'
  s.summary          = 'Upollo iOS core internals. Use the Upollo pod instead.'
  s.license          = { :type => 'Proprietary', :file => 'LICENSE.md' }

  s.author           = { 'Upollo Team' => 'cocoapods@upollo.ai' }
  s.homepage         = 'https://github.com/upollo/upollo-ios'
  s.social_media_url = 'https://twitter.com/upolloai'

  s.source           = { :git => 'https://github.com/upollo/upollo-ios.git', :tag => s.version.to_s }


  s.ios.deployment_target = '12.0'


  s.vendored_frameworks = 'UpolloCore.xcframework'
end
