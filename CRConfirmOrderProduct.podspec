Pod::Spec.new do |s|
    s.name         = 'CRConfirmOrderProduct'
    s.version      = '0.0.2'
    s.summary      = '确认订单 '
    s.homepage     = 'https://github.com/DrMatioDevelop/CRConfirmOrderProduct'
    s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
    s.authors      = {'cyf' => 'cyfsoftware@126.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/DrMatioDevelop/CRConfirmOrderProduct.git', :tag => s.version}
    s.source_files = 'CRConfirmOrderProduct/**/*.{h,m}'
    #s.resource     = 'Class/Class.bundle'
    s.dependency "CRProtocolManager",            "~>0.0.6"
    s.dependency "CRConfirmProductProtocol",     "~>0.0.5"     #多个的时候并列使用
    s.requires_arc = true
end