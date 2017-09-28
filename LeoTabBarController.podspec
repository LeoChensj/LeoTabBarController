#
#  Be sure to run `pod spec lint LeoTabBarController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  
  s.name         = "LeoTabBarController"
  s.version      = "1.0"
  s.summary      = "LeoTabBarController"
  s.description  = <<-DESC
                   基于UITabBarController
                   DESC

  s.homepage     = "https://github.com/LeoChensj/LeoTabBarController"
  s.license      = "MIT"
  s.author       = { "LeoChen" => "LeoChensj@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LeoChensj/LeoTabBarController.git", :tag => "#{s.version}" }
  s.source_files = "LeoTabBarController/*.{h,m}"
  s.public_header_files = "LeoTabBarController/*.h"
  s.requires_arc = true
  s.dependency "Masonry"
  
end
