Pod::Spec.new do |s|
s.name             = "XLFlashView"
s.version          = "0.0.1"
s.summary          = "XLFlashView is a log tool."
s.description      = <<-DESC
XLFlashView is tool design by vipMobile.
DESC
s.homepage         = "git@10.10.164.249:vipmobile-ios/xlflashview.git"

s.license          = 'MIT'
s.author           = { "liudicong" => "liudicong@xunlei.com" }
s.source           = { :git => "git@10.10.164.249:vipmobile-ios/xlflashview.git", :tag => s.version.to_s }

s.subspec 'FlashView' do |ss|

ss.source_files    = 'XLFlashView/FlashView/*.{h,m}'

end

s.subspec 'FlashViewNew' do |ss|

ss.source_files    = 'XLFlashView/FlashViewNew/*.{h,m}'

end

s.subspec 'minizip' do |ss|

ss.source_files    = 'XLFlashView/Downloader/minizip/*.{h,c}'

end

s.subspec 'Downloader' do |ss|

ss.source_files    = 'XLFlashView/Downloader/*.{h,m}'

end

s.subspec 'XLFireworks' do |ss|

ss.source_files    = 'XLFlashView/XLFireworks/*.{h,m}'

end


non_arc_files = 'XLFlashView/Downloader/ZipArchive.m'
s.requires_arc = true
s.exclude_files = non_arc_files
s.subspec 'no-arc' do |sna|
sna.requires_arc = false
sna.source_files = non_arc_files

end


s.platform     = :ios, '7.0'

s.requires_arc = true

s.source_files = 'XLFlashView/*.{h,m}'

s.frameworks = 'Foundation'

end
