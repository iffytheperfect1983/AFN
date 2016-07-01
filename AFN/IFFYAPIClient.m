//
//  IFFYAPIClient.m
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import "IFFYAPIClient.h"

static NSString *const IFFYAPIBaseURLString = @"http://localhost:8081";
static NSString *accessTokenKey = @"AccessTokenKey";

@interface IFFYAPIClient()

@end

@implementation IFFYAPIClient

+ (instancetype)sharedManager {
	static IFFYAPIClient *_sharedManager = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedManager = [[IFFYAPIClient alloc] initWithBaseURL:[NSURL URLWithString:IFFYAPIBaseURLString]];
//        _sharedManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
        
//        NSMutableSet *contentTypes = [[NSMutableSet alloc] initWithSet:_sharedManager.responseSerializer.acceptableContentTypes];
//        [contentTypes addObject:@"text/html"];
//        _sharedManager.responseSerializer.acceptableContentTypes = contentTypes;
        
//        [manager.requestSerializer setValue:kParseAppId forHTTPHeaderField:@"X-Parse-Application-Id"];
//        [manager.requestSerializer setValue:kParseRestKey forHTTPHeaderField:@"X-Parse-REST-API-Key"];
        _sharedManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedManager.requestSerializer = [AFJSONRequestSerializer serializer];
		_sharedManager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
	});

	return _sharedManager;
}

#pragma mark - Access Token

- (void)saveAccessTokenToNSUserDefaults:(NSString *)accessToken {
    [[NSUserDefaults standardUserDefaults] setObject:accessToken forKey:accessTokenKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getAccessToken {
    return [[NSUserDefaults standardUserDefaults] objectForKey:accessTokenKey];
}

//public func saveAccessTokenToNSUserDefaults(key: String) -> () {
//    let accessTokenDict = self.accessToken.toDictionary() as NSDictionary
//    NSUserDefaults.standardUserDefaults().setObject(accessTokenDict, forKey: key)
//    NSUserDefaults.standardUserDefaults().synchronize()
//}
//
//public func retrieveAccessTokenFromNSUserDefaults(key: String) -> () {
//    let defaultsObject: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey(key)
//    if let accessTokenDict = defaultsObject as? Dictionary<String, AnyObject> {
//        self.accessToken = AccessToken.fromDictionary(accessTokenDict)
//        if let token = self.accessToken.token {
//            self.adjustRouterForAccessToken(token)
//        }
//        if self.isUserAuthenticated() {
//            self.recoverAuthenticatedUser()
//        }
//    }
//
//}

//- (NSString *)getAuthenticationToken
//{
//    KeychainItemWrapper *keyChainItem = [[KeychainItemWrapper alloc]initWithIdentifier:kDOCNOW_KEYCHAIN_ID accessGroup:nil];
//    NSString *authenticationToken = [keyChainItem objectForKey:(__bridge id)(kSecValueData)];
//    return authenticationToken;
//}
//
//- (NSMutableURLRequest *)setAuthorizationHeader:(NSMutableURLRequest *)request
//{
//    NSString *tokenHeader = [NSString stringWithFormat:@"Token token=%@", [self getAuthenticationToken]];
//
//    [request addValue:tokenHeader forHTTPHeaderField:@"Authorization"];
//
//    return request;
//}


@end
