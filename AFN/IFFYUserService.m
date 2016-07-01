//
//  IFFYUserService.m
//  AFN
//
//  Created by Phanit Pollavith on 6/30/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import "IFFYUserService.h"

@implementation IFFYUserService

+ (NSURLSessionDataTask *)callNetwork {
    return [[IFFYAPIClient sharedManager] GET:@"/" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"Success with responseObject: %@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Failure with error: %@", [error description]);
    }];
}

@end
