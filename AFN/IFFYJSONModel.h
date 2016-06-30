//
//  IFFYJSONModel.h
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface IFFYJSONModel : JSONModel

@property (assign, nonatomic) int id;
@property (strong, nonatomic) NSString* country;
@property (strong, nonatomic) NSString* dialCode;
@property (assign, nonatomic) BOOL isInEurope;

@end
