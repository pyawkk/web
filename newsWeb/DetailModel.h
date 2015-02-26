//
//  DetailModel.h
//  newsWeb
//
//  Created by panyong on 15/2/25.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetailModel : NSObject

/** 新闻标题 */
@property (nonatomic, copy) NSString *title;
/** 新闻发布时间 */
@property (nonatomic, copy) NSString *ptime;
/** 新闻内容 */
@property (nonatomic, copy) NSString *body;
/** 新闻配图(希望这个数组中以后放HMNewsDetailImg模型) */
@property (nonatomic, strong) NSArray *img;

@end
