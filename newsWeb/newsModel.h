//
//  newsModel.h
//  newsWeb
//
//  Created by panyong on 15/2/25.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface newsModel : NSObject
/** 新闻ID */
@property (nonatomic, copy) NSString *docid;
/** 新闻标题 */
@property (nonatomic, copy) NSString *title;
/** 新闻摘要 */
@property (nonatomic, copy) NSString *digest;
/** 新闻配图 */
@property (nonatomic, copy) NSString *imgsrc;

@end
