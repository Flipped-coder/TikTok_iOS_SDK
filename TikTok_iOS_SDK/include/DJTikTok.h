//
//  DJTikTok.h
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import <Foundation/Foundation.h>
#import <DJUser.h>

extern NSString *const DJNetworkIsConnectingNotification;          // 正在连接中
extern NSString *const DJNetworkDidSetupNotification;              // 建立连接
extern NSString *const DJNetworkDidCloseNotification;              // 关闭连接
extern NSString *const DJNetworkDidRegisterNotification;           // 注册成功
extern NSString *const DJNetworkFailedRegisterNotification;        // 注册失败
extern NSString *const DKNetworkDidLoginNotification;              // 连接成功
extern NSString *const DJNetworkDidReceiveMessageNotification;     // 收到消息
extern NSString *const DJServiceErrorNotification;                 // 错误提示






///
/// DJTikTok核心头文件
///
/// 这是唯一需要导入到你的项目里的头文件，它引用了内部需要用到的头文件
///
@interface DJTikTok : NSObject

#define DJTIKTOK_VERSION @"0.1.6"




@end

