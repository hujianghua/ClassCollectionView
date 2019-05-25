//
//  ZLNClassModel.h
//  zln
//
//  Created by hujianghua on 2019/5/24.
//  Copyright © 2019年 hujianghua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZLNClassModel : NSObject
//分类id
@property(nonatomic,strong) NSString *classID;
//分类名称
@property(nonatomic,strong) NSString *className;
//分类图标
@property(nonatomic,strong) NSString *classImage;
@end
