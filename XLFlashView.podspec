Pod::Spec.new do |s|
s.name             = "iOS_QQ_Login"
s.version          = "0.0.1"
s.summary          = "iOS_QQ_Login is a log tool."
s.description      = <<-DESC
iOS_QQ_Login is tool design by vipMobile.
DESC
s.homepage         = "git@github.com:hunanldc/iOS_QQ_Login.git"

s.license          = 'MIT'
s.author           = { "liudicong" => "liudicong@xunlei.com" }
s.source           = { :git => "git@github.com:hunanldc/iOS_QQ_Login.git", :tag => s.version.to_s }

s.subspec 'iOS_QQ_Login' do |ss|

ss.source_files    = 'iOS_QQ_Login/*.{h,m}'

end

s.libraries = 'iconv','stdc++','sqlite3','z'

s.frameworks = 'Foundation','CoreGraphics','SystemConfiguration','CoreTelephony','Security'

s.resource_bundles = {
    'TencentOpenApi_IOS_Bundle' => ['iOS_QQ_Login/TencentOpenApi_IOS_Bundle.bundle']
  }

s.vendored_frameworks = 'iOS_QQ_Login/TencentOpenAPI'

s.platform     = :ios, '7.0'

s.requires_arc = true

end
