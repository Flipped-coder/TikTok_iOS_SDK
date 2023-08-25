//
//  DJUser.m
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import "DJUser.h"
#import <SafariServices/SafariServices.h>

@implementation DJUser


#pragma mark - User登录注册方法

+ (void)registerWithUsername:(NSString *)username
                    password:(NSString *)password
                    userInfo:(DJUserInfo * DJ_NULLABLE)userInfo
           completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
}





+ (void)loginWithUsername:(NSString *)username password:(NSString *)password completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    
}




+ (void)loginAuthorizeWithPathway:(DJLoginPathway *)pathway
                       urlSchemes:(NSString *)urlSchemes
                   viewController:(UIViewController *)viewController
                completionHandler:(DJCompletionHandler DJ_NULLABLE)handler; {
    
    switch((NSUInteger)pathway) {
        case DJUserLogin_google:        [self authorizeWithGoogleWithURLSchemes:urlSchemes ViewController:viewController];
        case DJUserLogin_facebook:      [self authorizeWithFacebookWithURLSchemes:urlSchemes ViewController:viewController];
        case DJUserLogin_github:        [self authorizeWithGithubWithURLSchemes:urlSchemes ViewController:viewController];
            
        default: NSLog(@"error\n");
    }
}


+ (void)loginWithURL:(NSURL *)url pathway:(DJLoginPathway *)pathway completionHandler:(DJCompletionHandler DJ_NULLABLE)handler {
    
    switch((NSUInteger)pathway) {
        case DJUserLogin_google:        [self parseGoogleAuthorizetionWithURL:url];
        case DJUserLogin_facebook:      [self parseFacebookAuthorizetionWithURL:url];
        case DJUserLogin_github:        [self parseGithubAuthorizetionWithURL:url];
            
        default: NSLog(@"error\n");
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



#pragma mark 第三方登录用户认证
// Google 用户认证
+ (void)authorizeWithGoogleWithURLSchemes:(NSString *)urlSchemes ViewController:(UIViewController *)viewController {
}

// Facebook 用户认证
+ (void)authorizeWithFacebookWithURLSchemes:(NSString *)urlSchemes ViewController:(UIViewController *)viewController {
    
}

// Github 用户认证
+ (void)authorizeWithGithubWithURLSchemes:(NSString *)urlSchemes ViewController:(UIViewController *)viewController {
    NSString *redirectURI = @"tiktok://callback";
    
    NSString *urlString = [NSString stringWithFormat:@"%@?client_id=%@&redirect_uri=%@", Github_API_AUTHORIZE ,Github_CLIENTID, redirectURI];
    NSURL *url = [NSURL URLWithString:urlString];
    
    // 创建自定义请求，并设置缓存策略为不使用缓存
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:30.0];

    // 使用SFSafariViewController加载自定义请求
    SFSafariViewController *safariViewController = [[SFSafariViewController alloc] initWithURL:request.URL];
    safariViewController.modalPresentationStyle = UIModalPresentationPopover;
    //    loginNC.modalPresentationStyle = UIModalPresentationFullScreen;

    [viewController presentViewController:safariViewController animated:YES completion:nil];
}




#pragma mark 第三方登录解析授权码
// 解析 Google 授权码
+ (void)parseGoogleAuthorizetionWithURL:(NSURL *)url {
    
}

// 解析 Facebook 授权码
+ (void)parseFacebookAuthorizetionWithURL:(NSURL *)url {
    
}

// 解析 Github 授权码
+ (void)parseGithubAuthorizetionWithURL:(NSURL *)url {
    NSString *query = [url query];
    NSArray *queryComponents = [query componentsSeparatedByString:@"&"];
    for (NSString *component in queryComponents) {
        NSArray *pairComponents = [component componentsSeparatedByString:@"="];
        NSString *key = [pairComponents firstObject];
        NSString *value = [pairComponents lastObject];
        if ([key isEqualToString:@"code"]) {
            NSLog(@"授权码：%@", value);
            [self exchangeGithubToken:value];
        }
    }
}


#pragma mark 第三方登录授权码换取令牌
// 换取 Google 令牌
+ (void)exchangeGoogleToken:(NSString *)authorizetionCode {
    
}

// 换取 Facebook 令牌
+ (void)exchangeFacebookToken:(NSString *)authorizetionCode {
    
}

// 换取 Github 令牌
+ (void)exchangeGithubToken:(NSString *)authorizetionCode {
    NSString *clientID = @"c7efd3bd5e5dd6ed121e";
    NSString *clientSecret = @"9f204ff9863d9722a909ae394508b9e2708d4582";
    
    // 构建请求 URL
    NSString *tokenURLString = @"https://github.com/login/oauth/access_token";
    NSURL *tokenURL = [NSURL URLWithString:tokenURLString];
    
    // 构建请求参数
    NSDictionary *params = @{
        @"client_id": clientID,
        @"client_secret": clientSecret,
        @"code": authorizetionCode
    };
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:tokenURL];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    // 构建请求体
    NSMutableString *body = [NSMutableString string];
    for (NSString *key in params) {
        NSString *encodedKey = [key stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        NSString *encodedValue = [params[key] stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        [body appendFormat:@"%@=%@&", encodedKey, encodedValue];
    }
    request.HTTPBody = [body dataUsingEncoding:NSUTF8StringEncoding];
    
    // 发起请求
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"获取访问令牌失败：%@", error);
            return;
        }
        
        NSError *jsonError;
        NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        if (jsonError) {
            NSLog(@"解析响应失败：%@", jsonError);
            return;
        }
        
        NSString *accessToken = responseDict[@"access_token"];
        if (accessToken) {
            NSLog(@"访问令牌：%@", accessToken);

            // 在这里可以使用访问令牌进行 GitHub API 请求
            // ...
        } else {
            NSLog(@"获取访问令牌失败");
        }
    }];
    [task resume];
}






- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    
    return nil;
}

@end
