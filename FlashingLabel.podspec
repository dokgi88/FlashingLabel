#
# Be sure to run `pod lib lint FlashingLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlashingLabel'
  s.version          = '1.0.6'
  s.summary          = 'very easy and simple flashing label'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Veeeeeeeeeeeeeeeery easy to use and simple Flashing Label.'

  s.homepage         = 'https://github.com/dokgi88/FlashingLabel'
   s.screenshots     = 'https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_trans.png?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dokgi88' => 'dokgi88@gmail.com' }
  s.source           = { :git => 'https://github.com/dokgi88/FlashingLabel.git', :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/FlashingLabel/Classes/**/*'
end
