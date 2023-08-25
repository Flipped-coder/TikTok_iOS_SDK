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

typedef void (^DJAsyncDataHandler)(NSData *data, NSString *objectId, NSError *error);


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


/*!
 * @abstract Generic 泛型
 */
#if __has_feature(objc_generics) || __has_extension(objc_generics)
#  define DJ_GENERIC(...) <__VA_ARGS__>
#else
#  define DJ_GENERIC(...)
#endif

/*!
 * @abstract nullable 用于定义某属性或者变量是否可允许为空
 */
#if __has_feature(nullability)
#  define DJ_NONNULL __nonnull
#  define DJ_NULLABLE __nullable
#else
#  define DJ_NONNULL
#  define DJ_NULLABLE
#endif



#endif /* DJConstants_h */
