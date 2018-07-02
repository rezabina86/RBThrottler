#
# Be sure to run `pod lib lint RBThrottler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RBThrottler'
  s.version          = '0.1.0'
  s.summary          = 'Throttling guaranteeing that an action will never be called more than once'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  "Throttling wraps a block of code with throttling logic, guaranteeing that an action will never be called more than once each specified interval. Throttle is typically used inside search boxes in order to limit the number of backend requests while user is typing for a query."
                       DESC

  s.homepage         = 'https://github.com/rezabina86/RBThrottler'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rezabina86' => 'tavakolibina@gmail.com' }
  s.source           = { :git => 'https://github.com/rezabina86/RBThrottler.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RBThrottler/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RBThrottler' => ['RBThrottler/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
