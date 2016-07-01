//
//  IFFYAPIClient.h
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface IFFYAPIClient : AFHTTPSessionManager

+ (instancetype)sharedManager;

- (NSString *)getAccessToken;
- (void)saveAccessTokenToNSUserDefaults:(NSString *)accessToken;

@end
