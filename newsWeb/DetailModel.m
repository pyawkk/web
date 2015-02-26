//
//  DetailModel.m
//  newsWeb
//
//  Created by panyong on 15/2/25.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "DetailModel.h"
#import "MBNImage.h"

@implementation DetailModel
+ (NSDictionary *)objectClassInArray
{
    return @{
             @"img" : [MBNImage class]
             };
}

//- (NSDictionary *)objectClassInArray
//{
//    return @{@"img" : [MBNImage class]};
//}

@end
