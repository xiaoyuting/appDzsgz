//
//  loadPageView.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "loadPageView.h"
#import "guestRequest.h"
#import "loadCenterStyle.h"
#import "infoModel.h"
@implementation loadPageView
+ (loadPageView *)PageView{
    static loadPageView  * page = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        page = [[self alloc] init];
    });
    return page;
}
- (void)showLoadViewPage{
    self.window = [UIApplication    sharedApplication].keyWindow;
    self.bgView = [[UIView alloc]initWithFrame:self.window.bounds];
    [self.window addSubview:self.bgView];
    
    self.loadView = [[UIView alloc]initWithFrame:self.bgView.bounds];
    self.loadView.backgroundColor = [UIColor whiteColor];
   
    [self.window  addSubview:self.loadView];
    self.fastBtn = [[loadButton alloc]initWithFrame:CGRectMake(0, 0, kRealValueW(60), kRealValueH(85))];
    self.fastBtn.center =self.loadView.center;
    self.fastBtn.img.image =[UIImage imageNamed:@"visitor"];
    self.fastBtn.bottomLab.text =@"快速登录";
    [self.loadView    addSubview:self.fastBtn];
    
    [self.fastBtn addTarget:self action:@selector(fastLoad ) forControlEvents:UIControlEventTouchUpInside];
}

- (void)fastLoad{
    [guestRequest guestRequestSuccess:^(NSDictionary * _Nonnull info) {
        
        NSLog(@"info==%@",info);
     
        [loadStyle translateLoadSuccessInfo:info];
        
        
    } failure:^(NSError * _Nonnull error) {
        
    }];
}
@end
