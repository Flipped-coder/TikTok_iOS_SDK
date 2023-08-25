//
//  DJConstants.h
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/25.
//

#ifndef DJConstants_h
#define DJConstants_h

#import <Foundation/Foundation.h>

typedef void (^DJCompletionHandler)(id resultObject, NSError *error);


/*!
 * 平台类型
 */
typedef NS_ENUM(NSInteger, DJPlatformType) {
  /// 所有平台
  kJMSGPlatformTypeAll        = 0,
  /// Android 端
  kJMSGPlatformTypeAndroid    = 1,
  /// iOS 端
  kJMSGPlatformTypeiOS        = 2,
  /// Windows 端
  kJMSGPlatformTypeWindows    = 4,
  /// web 端
  kJMSGPlatformTypeWeb        = 16,
};




#endif /* DJConstants_h */
