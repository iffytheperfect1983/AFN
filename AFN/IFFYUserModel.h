//
//  IFFYUserModel.h
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IFFYUserModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) int age;
@property (strong, nonatomic) NSArray *roles;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
