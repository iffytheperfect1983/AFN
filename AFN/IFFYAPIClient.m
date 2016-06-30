//
//  IFFYAPIClient.m
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import "IFFYAPIClient.h"

static NSString * const IFFYAPIBaseURLString = @"https://api.app.net/";

@implementation IFFYAPIClient

+ (instancetype)sharedManager {
	static IFFYAPIClient *_sharedManager = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedManager = [[IFFYAPIClient alloc] initWithBaseURL:[NSURL URLWithString:IFFYAPIBaseURLString]];
		_sharedManager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
	});

	return _sharedManager;
}

@end
