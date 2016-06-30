//
//  IFFYDataModel.h
//  AFN
//
//  Created by Phanit Pollavith on 6/30/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "IFFYNameModel.h"

@interface IFFYDataModel : JSONModel

@property (strong, nonatomic) NSArray <IFFYNameModel *> *Data;
//@property (strong, nonatomic) NSString *Name;

@end
