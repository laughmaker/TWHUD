Pod::Spec.new do |s|

  s.name         = "XTHUD"
  s.version      = "1.0.0"
  s.summary      = "小图等待提示"
  s.homepage     = "https://coding.net/u/xiaotujieshu/p/XTHUD_iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "hezhendong" => "wskrdfeai@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://git.coding.net/xiaotujieshu/XTHUD_iOS.git", :tag => "1.0.0" }
  s.source_files = "HUD/*"
  s.frameworks   = "UIKit", "CoreGraphics"

end
