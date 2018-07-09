Pod::Spec.new do |s|
s.name             = "BSWebImg"
s.version          = "1.0"
s.summary          = "BSWebImg"
s.description      = <<-DESC
TestMVC

* Markdown format.
* Don't worry about the indent, we strip it!
DESC
s.homepage         = "https://github.com/FreeBaiShun/BSWebImg"


s.license          = 'MIT'
s.author           = { "MAC" => "851083075@qq.com" }
s.source           = { :git => "https://github.com/FreeBaiShun/BSWebImg.git", :tag => s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'TempTest/BSWebImg/*.{h,m}'
#s.resource_bundles = {
#'YDRobot' => ['Demo/YDRobot/Assets/*.png']
#}

s.public_header_files = 'TempTest/BSWebImg/*.h'
#s.dependency 'YSASIHTTPRequest', '~> 2.0.1'
end

