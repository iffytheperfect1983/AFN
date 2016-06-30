//
//  IFFYNameModel.h
//  AFN
//
//  Created by Phanit Pollavith on 6/30/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface IFFYNameModel : JSONModel

@property (strong, nonatomic) NSString *ID;
@property (strong, nonatomic) NSString *Name;

@end
