//
//  DJNetworkManager.m
//  TikTok_iOS_SDK
//
//  Created by 邓杰 on 2023/8/23.
//

#import "DJNetworkManager.h"
#import "AFNetworking.h"

@implementation DJNetworkManager

- (void)test {
    NSLog(@"This is iOS_SDK_test");
    
    // 创建 AFHTTPSessionManager 实例
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    // 设置响应数据的类型，这里使用 JSON
    manager.responseSerializer = [AFJSONResponseSerializer serializer];

    // 发起 GET 请求
    [manager GET:@"https://jsonplaceholder.typicode.com/posts/1"
      parameters:nil
      headers:nil
      progress:nil
      success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          // 请求成功处理
          NSLog(@"Response JSON: %@", responseObject);
      }
      failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
          // 请求失败处理
          NSLog(@"Error: %@", error);
      }];
}

@end
