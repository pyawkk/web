//
//  MBNHttpManager.m
//  
//
//  Created by panyong on 15/2/25.
//
//

#import "MBNHttpManager.h"

@implementation MBNHttpManager

+(instancetype)manager{
    MBNHttpManager *httpManager = [super manager];
    
    NSMutableSet *set = [NSMutableSet set];
    set.set = httpManager.responseSerializer.acceptableContentTypes;
    [set addObject:@"text/html"];
    httpManager.responseSerializer.acceptableContentTypes = set;
    
    return httpManager;
}

@end
