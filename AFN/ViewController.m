//
//  ViewController.m
//  AFN
//
//  Created by Phanit Pollavith on 6/29/16.
//  Copyright © 2016 iffytheperfect. All rights reserved.
//

#import "ViewController.h"
#import "IFFYJSONModel.h"
#import "IFFYDataModel.h"

static const NSString *mockString = @"{\"id\": \"10\", \"country\": \"Germany\", \"dialCode\": 49, \"isInEurope\": true }";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary *dict = [NSJSONSerialization JSONObjectWithData:[mockString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    NSError *err;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&err];
    
    
    NSString *jsonString;
    if (!jsonData) {
        NSLog(@"Got an error: %@", err);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
//    IFFYJSONModel *iffyJSONModel = [[IFFYJSONModel alloc] initWithString:jsonString error:&err];
    
    IFFYJSONModel *iffyJSONModel = [[IFFYJSONModel alloc] initWithData:jsonData error:&err];
    
    NSLog(@"iffyJsonModel: %@", iffyJSONModel);
    
    NSLog(@"Country: %@", [iffyJSONModel country]);
    NSLog(@"dialCode: %d", [iffyJSONModel id]);
    NSLog(@"Is In Europe: %d", [iffyJSONModel isInEurope]);
    
    
    // // New Segment
    NSString *str=@"{\"Data\": [{\"ID\":\"1\",\"Name\":\"Raj\"},{\"ID\":\"2\",\"Name\":\"Rajneesh\"}]}";
    NSMutableDictionary *dicti =[NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    NSError *error;
    
    NSData *jsonData1 = [NSJSONSerialization dataWithJSONObject:dicti
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&err];
    NSString *jsonString1;
    if (!jsonData1) {
        NSLog(@"Got an error: %@", err);
    } else {
        jsonString1 = [[NSString alloc] initWithData:jsonData1 encoding:NSUTF8StringEncoding];
    }
    IFFYDataModel *iffyDataModel = [[IFFYDataModel alloc] initWithData:jsonData1 error:&error];
    NSLog(@"\n\nIffyDataModel:%@", iffyDataModel);
    
    
//    NSMutableArray *dataArr=[dicti valueForKey:@"Data"];
//    for (NSDictionary *userData in dataArr) {
//        NSLog(@"Id:%@ Name:%@",[userData valueForKey:@"ID"],[userData valueForKey:@"Name"]);
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
