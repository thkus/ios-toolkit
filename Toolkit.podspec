Pod::Spec.new do |s|
  s.name         = "Toolkit"
  s.platform     = :ios
  s.version      = "0.1"
  s.summary      = "Toolkit. A collection of classes and snippets i frequently use bundled into a pod for convenience."
  s.homepage     = "https://github.com/tosse/ios-toolkit"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "Thomas Kuster" => "kuster.t@gmail.com" }
  s.source       = { :git => "https://github.com/tosse/ios-toolkit.git", :tag => '0.1' }
  s.framework    = 'Foundation', 'UIKit', 'QuartzCore/QuartzCore.h'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end