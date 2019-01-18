//
//  loadButton.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "loadButton.h"

@implementation loadButton
- (instancetype)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]){
        self.img = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.width)];
        [self addSubview:self.img];
        self.bottomLab = [[UILabel alloc]initWithFrame:CGRectMake(0, frame.size.height-15, frame.size.width, 15)];
        self.bottomLab.textColor =ColorFromRGB(0x666666);
        self.bottomLab.textAlignment = NSTextAlignmentCenter;
        self.bottomLab.font = [UIFont systemFontOfSize:10];
        [self addSubview:self.bottomLab];
        
        
    }
    return self;
}

@end
