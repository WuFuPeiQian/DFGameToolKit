

Pod::Spec.new do |spec|
  
  spec.name             = 'DFGameToolKit'
  spec.version          = '1.0.8'
  spec.summary          = "封装SDK上传Cocoapods的DFGameToolKit工具集."
  spec.homepage         = "https://github.com/WuFuPeiQian/DFGameToolKit"
  spec.license          = { :type => "MIT", :file => "LICENSE" }
  spec.author           = { "DF" => "993942283@qq.com" }
  spec.platform         = :ios
  spec.ios.deployment_target = '13.0'
  
  spec.source           = { :git => "https://github.com/WuFuPeiQian/DFGameToolKit.git", :tag => "#{spec.version}" }
  
  spec.requires_arc     = true
  
  spec.preserve_paths   = 'HLTestSDK.framework'
  spec.source_files     = 'HLTestSDK.framework/Headers/*.h'
  spec.public_header_files = 'HLTestSDK.framework/Headers/*.h'
  spec.vendored_frameworks = 'HLTestSDK.framework'
  
  # 包含 Resource.bundle 下的所有资源文件
  spec.resource_bundle  = { 'DFGameToolKit' => ['HLTestSDK.framework/Resource.bundle'] }
  
  # 包含 Resource.bundle 下的所有 .jpg 图片文件
  spec.resources        = 'HLTestSDK.framework/Resource.bundle/Resource/*.jpg'
  
  spec.resource_bundles = {
    'Resource' => ['HLTestSDK.framework/Resource.bundle/Resource/*.jpg']
  }
  
  # 在xcconfig中，路径应该以'${PODS_ROOT}/'开头，并且确保路径闭合正确，没有多余的斜杠
  spec.xcconfig         = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/DFGameToolKit/HLTestSDK.framework/Headers/' }
  
  spec.dependency 'AFNetworking', '~> 4.0.1' # 指定依赖库的版本
  spec.dependency 'MJExtension', '~> 3.4.1' # 指定依赖库的版本
  spec.dependency 'MBProgressHUD', '~> 1.2.0' # 指定依赖库的版本
  spec.dependency 'LSTPopView', '~> 0.3.10' # 指定依赖库的版本
    spec.dependency 'LSTTimer','~> 0.2.10' # 指定依赖库的版本
  
  
end
