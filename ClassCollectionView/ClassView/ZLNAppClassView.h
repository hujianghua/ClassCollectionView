//
//  ZLNAppClassView.h
//  zln
//
//  Created by hujianghua on 2019/5/24.
//  Copyright © 2019年 hujianghua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZLNClassModel.h"

@interface ZLNAppClassView : UIView
@property(nonatomic,strong) NSArray *classArray;

//用户选择分类的回调
@property(nonatomic,copy) void(^selectBlock)(NSInteger);
@end
