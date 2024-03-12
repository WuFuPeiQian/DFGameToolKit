#
#  Be sure to run `pod spec lint DFGameToolKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "DFGameToolKit"
  spec.version      = "1.0.1"
  spec.summary      = "封装SDK上传Cocoapod/ DFGameToolKit."
  spec.homepage     = "https://github.com/WuFuPeiQian/DFGameToolKit"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }  #开源协议
  spec.author             = { "益" => "993942283@qq.com" } #作者
  spec.ios.deployment_target = "12.0"
  spec.platform     = :ios, "12.0"
 

  spec.source       = { :git => "https://github.com/WuFuPeiQian/DFGameToolKit.git", :tag => "1.0.3" }
  spec.source_files  = "DFGameToolKit/Classes/XBSTimer/**/*"  #文件路径

  # spec.vendored_frameworks = 'Frameworks/HLTestSDK.framework'
  
  #处理模拟器报错
    spec.xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64 armv7' }
    spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.dependency 'AFNetworking', '~> 4.0.0' # 指定依赖库的版本
    # spec.dependency 'LSTPopView', '~> 0.3.10' # 指定依赖库的版本
  spec.dependency 'MJExtension', '~> 3.4.1' # 指定依赖库的版本
  spec.dependency 'MBProgressHUD', '~> 1.2.0' # 指定依赖库的版本
    # spec.dependency 'IQKeyboardManagerSwift', '~> 6.5.16' # 指定依赖库的版本



end




