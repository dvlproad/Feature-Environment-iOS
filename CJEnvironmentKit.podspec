Pod::Spec.new do |s|
  #验证方法1：pod lib lint CJEnvironmentKit.podspec --sources='https://github.com/CocoaPods/Specs.git,https://gitee.com/dvlproad/dvlproadSpecs' --allow-warnings --use-libraries --verbose
  #验证方法2：pod lib lint CJEnvironmentKit.podspec --sources=master,dvlproad --allow-warnings --use-libraries --verbose
  #提交方法： pod repo push dvlproad CJEnvironmentKit.podspec --sources=master,dvlproad --allow-warnings --use-libraries --verbose
  # pod的本地索引文件：~/Library/Caches/CocoaPods/search_index.json
  s.name         = "CJEnvironmentKit"
  s.version      = "0.1.0"
  s.summary      = "环境切换功能"
  s.homepage     = "https://github.com/dvlproad/Feature-Environment-iOS"

  s.description  = <<-DESC

                   A longer description of CJEnvironmentKit in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  

  #s.license      = {
  #  :type => 'Copyright',
  #  :text => <<-LICENSE
  #            © 2008-2016 Dvlproad. All rights reserved.
  #  LICENSE
  #}
  s.license      = "MIT"

  s.author   = { "dvlproad" => "" }

  s.platform     = :ios, "8.0"
  s.swift_version = '4.0'
 
  s.source       = { :git => "https://github.com/dvlproad/Feature-Environment-iOS.git", :tag => "CJEnvironmentKit_0.3.0" }
  s.source_files  = "CJEnvironmentKit/**/*.{swift}"

  s.frameworks = "UIKit"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # s.resources = "CJEnvironmentKit/**/*.{png,xib}"
  # s.frameworks = "MediaPlayer"
  # s.dependency 'Masonry'


end
