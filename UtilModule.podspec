#
# Be sure to run `pod lib lint UtilModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UtilModule'
  s.version          = '0.1.0'
  s.summary          = '基础公共模块'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 项目基础公共模块.原则上是所有项目都可以使用.
                       DESC

  s.homepage         = 'https://github.com/weiza-paradise/UtilModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'weiza' => 'ao_1026@126.com' }
  s.source           = { :git => 'https://github.com/weiza-paradise/UtilModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '11.0'
  s.source_files = 'UtilModule/Classes/**/*'

  # s.resource_bundles = {
  #   'UtilModule' => ['UtilModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.frameworks = 'UIKit'
  
  # 依赖第三方库(一般都会加上版本号,这里不加是因为每次(update)保持最新的)
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'NSObject+Rx'
  s.dependency 'RxDataSources'

  s.dependency 'SwiftyUserDefaults'
  s.dependency 'Toast-Swift'
  s.dependency 'SnapKit'
  s.dependency 'Kingfisher'
  s.dependency 'EmptyDataSet-Swift'
  s.dependency 'SwifterSwift'
  s.dependency 'Result'
  s.dependency 'Reusable'
  s.dependency 'CryptoSwift'
  
end
