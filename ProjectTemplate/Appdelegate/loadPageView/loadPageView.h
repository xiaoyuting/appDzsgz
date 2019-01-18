//
//  loadPageView.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "loadButton.h"
#define loadPage [loadPageView  PageView]
NS_ASSUME_NONNULL_BEGIN

@interface loadPageView : NSObject
@property (nonatomic,strong)UIWindow * window;
@property (nonatomic,strong)UIView   * bgView;
@property (nonatomic,strong)loadButton * fastBtn;
@property (nonatomic,strong)UIView   * loadView;
+ (loadPageView *)PageView;
- (void)showLoadViewPage;
@end

NS_ASSUME_NONNULL_END
