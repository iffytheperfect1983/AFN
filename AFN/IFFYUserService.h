//
//  IFFYUserService.h
//  AFN
//
//  Created by Phanit Pollavith on 6/30/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import "IFFYAPIClient.h"

@interface IFFYUserService : IFFYAPIClient

+ (NSURLSessionDataTask *)callNetwork;

@end
