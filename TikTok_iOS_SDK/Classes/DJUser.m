//
//  DJUser.m
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import "DJUser.h"
#import <SafariServices/SafariServices.h>
#import <OAuthLogin/OAuthLogin.h>
#import <DJNetworking/DJUserNetworking.h>

@implementation DJUser


#pragma mark - User登录注册方法

+ (void)registerWithUsername:(NSString *)username
                    password:(NSString *)password
                    userInfo:(DJUserInfo * DJ_NULLABLE)userInfo
           completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
}





+ (void)loginWithAccount:(NSString *)account
                    code:(NSString *)code
            loginPathway:(DJLoginPathway)loginPathway
       completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
    
}




+ (void)loginThirdPartyWithLoginPathway:(DJLoginPathway)loginPathway
                         viewController:(UIViewController *)viewController
                      completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    if (loginPathway == DJGoogleLoginType) {
        [DJUser getGoogleTTKUserInfoWithViewController:viewController CompletionHandler:^(id resultObject, NSError *error) {
            NSLog(@"");
        }];
    } else if (loginPathway == DJGoogleStandbyLoginType) {
        
        [DJUser getGoogleStandbyTTKUserInfoWithViewController:viewController CompletionHandler:^(id resultObject, NSError *error) {
            NSLog(@"");
        }];
        
    }
    

}





+ (void)logout:(DJCompletionHandler DJ_NULLABLE)handler {
    
}




#pragma mark - Get方法（获取User信息）


+ (DJUser *)myInfo {
    return nil;
}





+ (DJUser *DJ_NULLABLE)userWithUid:(SInt64)ttk_id {
    return nil;
}




+ (void)userInfoArrayWithUsernameArray:(NSArray DJ_GENERIC(__kindof NSString *)*)usernameArray
                     completionHandler:(DJCompletionHandler)handler {
    
}





- (void)thumbAvatarData:(DJAsyncDataHandler)handler {
    
}





- (void)largeAvatarData:(DJAsyncDataHandler)handler {
    
}




#pragma mark - Set方法（设置User信息）


+ (void)addUsersToBlacklist:(NSArray DJ_GENERIC(__kindof NSString *)*)usernameArray
          completionHandler:(DJCompletionHandler)handler {
    
    
}




+ (void)delUsersFromBlacklist:(NSArray DJ_GENERIC(__kindof NSString *)*)usernameArray
            completionHandler:(DJCompletionHandler)handler {
    
    
}




- (void)setIsNoDisturb:(BOOL)isNoDisturb handler:(DJCompletionHandler)handler {
    
}



#pragma mark - update方法（更新User信息）

+ (void)updateMyInfoWithUserInfo:(DJUserInfo *)userInfo
               completionHandler:(DJCompletionHandler)handler {
    
}




+ (void)updateMyAvatarWithData:(NSData *)avatarData
                  avatarFormat:(NSString *)avatarFormat
             completionHandler:(DJCompletionHandler)handler {
    
}




+ (void)updateMyPasswordWithNewPassword:(NSString *)newPassword
                            oldPassword:(NSString *)oldPassword
                      completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
}





- (void)updateNoteName:(NSString *)noteName completionHandler:(DJCompletionHandler)handler {
    
}




- (void)updateNoteText:(NSString *)noteText completionHandler:(DJCompletionHandler)handler {
    
}











+ (void)getGoogleTTKUserInfoWithViewController:(UIViewController *)viewController
                             CompletionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    // 得到HTTP请求信息
    [DJUser getGoogleLoginRequserInfoWithViewController:viewController CompletionHandler:^(id resultObject, NSError *error) {
        if (!error) {
            DJRequestInfo *requestInfo = (DJRequestInfo *)resultObject;
            // 获得服务器返回的响应：TTK UserInfo
            [DJUserManageNetworking standbyThirdPartyLoginWithRequestInfo:requestInfo completionHandler:^(id  _Nullable resultObject, NSError * _Nullable error) {
                if (!error) {
                    
                    
                    // resultObject为服务器返回的ttkUserInfo
                    id userInfo = resultObject;
                    
                    
                    handler(userInfo, nil);
                    
                } else {
                    dispatch_async(dispatch_get_main_queue(),^{
                        if(handler){
                            handler(nil, error);
                        }
                    });
                }
            }];
        } else {
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    handler(nil, error);
                }
            });
        }
    }];
}


// 获取 Google 登录的HTTP请求信息
+ (void)getGoogleLoginRequserInfoWithViewController:(UIViewController *)viewController
                                  CompletionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    // 获取客户端信息
    DJClientInfo *clientInfo = [DJClientInfo initClientInfo];
    // 获取服务器信息
    DJServerInfo *serverInfo = [DJServerInfo initServerInfoWithURLSchems:SERVER_SCHEMES serverIp:SERVER_IP erverPort:SERVER_PORT serverRoute:LOGIN_ROUTE_GOOGLE];
    
    // 获取 google发放的token
    [DJLogin googleLoginWithViewController:viewController handler:^(NSString * _Nullable token, NSError * _Nullable error) {
        if (!error) {
            // 获取请求体信息
            DJLoginParameters *parameters = [DJLoginParameters initLoginParametersWithPhone:nil email:nil verification_code:nil ttk_id:nil password:nil token:token thirdPartyUserInfo:nil clientInfo:clientInfo];
            // 获取HTTP请求信息
            DJRequestInfo *requestInfo = [DJRequestInfo initRequestInfoWithServerInfo:serverInfo parameters:parameters];
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    // 返回HTTP请求信息
                    handler(requestInfo, nil);
                }
            });
        } else {
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    handler(nil, error);
                }
            });
        }
    }];
}






+ (void)getGoogleStandbyTTKUserInfoWithViewController:(UIViewController *)viewController
                             CompletionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    // 得到HTTP请求信息
    [DJUser getGoogleStandbyLoginRequsetInfoWithViewController:viewController CompletionHandler:^(id resultObject, NSError *error) {
        if (!error) {
            DJRequestInfo *requestInfo = (DJRequestInfo *)resultObject;
            // 获得服务器返回的响应：TTK UserInfo
            [DJUserManageNetworking thirdPartyGoogleLoginWithRequestInfo:requestInfo completionHandler:^(id  _Nullable resultObject, NSError * _Nullable error) {
                if (!error) {
                    
                    
                    // resultObject为服务器返回的ttkUserInfo
                    id userInfo = resultObject;
                    
                    
                    handler(userInfo, nil);
                    
                } else {
                    dispatch_async(dispatch_get_main_queue(),^{
                        if(handler){
                            handler(nil, error);
                        }
                    });
                }
            }];
        } else {
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    handler(nil, error);
                }
            });
        }
    }];
}

// 获取备用方法 Google 登录的HTTP请求信息
+ (void)getGoogleStandbyLoginRequsetInfoWithViewController:(UIViewController *)viewController
                                         CompletionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    // 获取客户端信息
    DJClientInfo *clientInfo = [DJClientInfo initClientInfo];
    // 获取服务器信息
    DJServerInfo *serverInfo = [DJServerInfo initServerInfoWithURLSchems:SERVER_SCHEMES serverIp:SERVER_IP erverPort:SERVER_PORT serverRoute:LOGIN_ROUTE_STANDBY_GOOGLE];
    
    
    // 获取 google发放的token
    [DJLogin googleLoginWithViewController:viewController handler:^(NSString * _Nullable token, NSError * _Nullable error) {
        if (!error) {
            
            // 获取第三方平台UserInfo
            DJStandbyUserInfo *standbyInfo = [DJStandbyUserInfo initStandbyUserInfoWithToken:token loginPathWay:DJGoogleStandbyLoginType];
            // 获取请求体信息
            DJLoginParameters *parameters = [DJLoginParameters initLoginParametersWithPhone:nil email:nil verification_code:nil ttk_id:nil password:nil token:nil thirdPartyUserInfo:standbyInfo clientInfo:clientInfo];
            // 获取HTTP请求信息
            DJRequestInfo *requestInfo = [DJRequestInfo initRequestInfoWithServerInfo:serverInfo parameters:parameters];
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    // 返回HTTP请求信息
                    handler(requestInfo, nil);
                }
            });
        } else {
            dispatch_async(dispatch_get_main_queue(),^{
                if(handler){
                    handler(nil, error);
                }
            });
        }
    }];
    
    
    
    
}











- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    
    return nil;
}

@end
