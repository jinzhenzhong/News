//
//  NetworkTools.m
//  新闻
//
//  Created by 王莹 on 15/6/24.
//  Copyright (c) 2015年 超级中. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

+ (instancetype)sharedNetworkTools{
    static NetworkTools *instance;
    static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
    /**
     *  后续使用可以用相对路径
     */
    // 注意：baseURL 应该以 / 结尾
    NSURL *baseURL = [NSURL URLWithString:@"http://c.m.163.com/nc/article/headline/"];
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    instance = [[self alloc] initWithBaseURL:baseURL sessionConfiguration:config];
    
    instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
});
}
@end
