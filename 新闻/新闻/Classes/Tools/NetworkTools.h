//
//  NetworkTools.h
//  新闻
//
//  Created by 王莹 on 15/6/24.
//  Copyright (c) 2015年 超级中. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface NetworkTools : AFHTTPSessionManager

+ (instancetype)sharedNetworkTools;

@end
