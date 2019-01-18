//
//  centerInfo.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "centerInfo.h"

@implementation centerInfo
+ (centerInfo * )shearInfo{
    static  centerInfo * center =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[centerInfo alloc] init];
    });
    return center;
}
@end
