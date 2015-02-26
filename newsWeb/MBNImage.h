//
//  MBNImage.h
//  
//
//  Created by panyong on 15/2/25.
//
//

#import <Foundation/Foundation.h>

@interface MBNImage : NSObject
/** 图片路径 */
@property (nonatomic, copy) NSString *src;
/** 图片尺寸 */
@property (nonatomic, copy) NSString *pixel;
/** 图片所处的位置 */
@property (nonatomic, copy) NSString *ref;

@end
