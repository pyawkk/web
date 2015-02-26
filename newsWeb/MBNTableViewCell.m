//
//  MBNTableViewCell.m
//  newsWeb
//
//  Created by panyong on 15/2/25.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "MBNTableViewCell.h"
#import "SDWebImageManager.h"
#import "UIImageView+WebCache.h"
#import "newsModel.h"

@interface MBNTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UITextField *title;


@end


@implementation MBNTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setNewsArr:(newsModel *)newsArr{
    newsModel *model = newsArr;
    [self.img sd_setImageWithURL:[NSURL URLWithString:model.imgsrc]];
    self.title.text = model.title;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
