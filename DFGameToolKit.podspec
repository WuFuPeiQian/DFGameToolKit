
Pod::Spec.new do |spec|


  spec.name         = 'DFGameToolKit'
  spec.version      = '1.0.6'
  spec.summary      = "封装SDK上传Cocoapod/ DFGameToolKit."
  spec.homepage     = "https://github.com/WuFuPeiQian/DFGameToolKit"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }  #开源协议
  spec.author             = { "DF" => "993942283@qq.com" } #作者
  spec.platform     = :ios
  spec.ios.deployment_target = '13.0'


  spec.source       = { :git => "https://github.com/WuFuPeiQian/DFGameToolKit.git", :tag => spec.version.to_s  }

  spec.requires_arc = true
 
  # spec.source_files  = "DFGameToolKit/Classes/**/*"  #文件路径
  
  
  spec.preserve_paths = '**/HLTestSDK.framework'
  spec.source_files = '**/HLTestSDK.framework/Headers/*.h'
  spec.public_header_files = '**/HLTestSDK.framework/Headers/*.h'
  spec.vendored_frameworks = '**/HLTestSDK.framework'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/DFGameToolKit/HLTestSDK.framework/Headers/}
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  



end




