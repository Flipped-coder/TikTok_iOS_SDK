//
//  DJUser.m
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import "DJUser.h"

@implementation DJUser


#pragma mark - User登录注册方法

+ (void)registerWithUsername:(NSString *)username
                    password:(NSString *)password
                    userInfo:(DJUserInfo * DJ_NULLABLE)userInfo
           completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
}





+ (void)loginWithUsername:(NSString *)username
                 password:(NSString *)password
                  pathway:(DJLoginPathway *)pathway
        completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
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






- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    
    return nil;
}

@end
