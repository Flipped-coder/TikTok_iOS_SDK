

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  spec.name         = "TikTok_iOS_SDK"
  spec.version      = "0.1.4"
  spec.summary      = "TikTok_iOS_SDK."

  # This description is used to generate tags and improve search results.

  spec.description  = "This is TikTok_iOS_SDK"
  spec.homepage     = "https://github.com/Flipped-coder/TikTok_iOS_SDK"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  #spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = { "邓杰" => "1171276417@qq.com" }


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.ios.deployment_target = '11.0'


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/Flipped-coder/TikTok_iOS_SDK.git", :tag => spec.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source_files  = 'TikTok_iOS_SDK/Classes/*'

  spec.public_header_files = "TikTok_iOS_SDK/Classes/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  



  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }   # 解决x86库和arm64编译架构冲突
  spec.frameworks = 'UIKit', 'MapKit'

  spec.dependency 'AFNetworking', '~> 4.0.0'
  spec.dependency 'CocoaAsyncSocket', '~> 7.6.2'


end
