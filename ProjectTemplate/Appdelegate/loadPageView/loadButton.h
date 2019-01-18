//
//  loadButton.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface loadButton : UIButton
@property (nonatomic,strong) UIImageView * img;
@property (nonatomic,strong) UILabel     * bottomLab;
- (instancetype)initWithFrame:(CGRect)frame;
@end

NS_ASSUME_NONNULL_END
