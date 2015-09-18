Pod::Spec.new do |s|

  s.name         = "TWHUD"
  s.version      = "1.0.1"
  s.summary      = "简单的活动等待提示"
  s.homepage     = "https://github.com/laughmaker/TWHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "hezhendong" => "wskrdfeai@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/laughmaker/TWHUD.git", :tag => "1.0.1" }
  s.source_files = "TWHUD/*"
  s.frameworks   = "UIKit", "CoreGraphics"

end
