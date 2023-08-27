//
//  DJTikTok.m
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import "TikTok_iOS_SDK.h"
#import <OAuthLogin/OAuthLogin.h>

@implementation DJTikTok

+ (void)setupDJTikTok:(NSDictionary *)launchOptions appKey:(NSString *)appKey extra:(id)extra {
    
}




+ (void)addDelegate:(id <DJTikTokDelegate>)delegate withConversation:(DJConversation *)conversation {
    
}



+ (void)removeDelegate:(id <DJTikTokDelegate>)delegate withConversation:(DJConversation *)conversation {
    
    
}



+ (void)removeAllDelegates {
    
}




+ (void)registerForRemoteNotificationTypes:(NSUInteger)types categories:(NSSet *)categories {
    
}



+ (void)registerGoogleLoginWithClientID:(NSString *)clienID {
    
    GIDConfiguration *config = [[GIDConfiguration alloc] initWithClientID:clienID];
    [[GIDSignIn sharedInstance] setConfiguration:config];
}




+ (void)registerFacebookLoginWithApplication:(UIApplication *)application
                        launchingWithOptions:(NSDictionary *)launchOptions {
    
    [[FBSDKApplicationDelegate sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
}


+ (void)registerDeviceToken:(NSData *)deviceToken {
    
    
}


 


+ (BOOL)isMainAppKey:(NSString *)appKey {
    
    return YES;
}



+ (BOOL)isSetGlobalNoDisturb {
    
    return YES;
}





+ (void)setIsGlobalNoDisturb:(BOOL)isNoDisturb handler:(DJCompletionHandler)handler {
    
}





+ (void)noDisturbList:(DJCompletionHandler)handler {
    
}






+ (void)blackList:(DJCompletionHandler)handler {
    
}




+ (NSTimeInterval)currentServerTime {
    
    return 0;
}



@end
