//
//  AppClassCollectionViewCell.m
//  zln
//
//  Created by hujianghua on 2019/5/24.
//  Copyright © 2019年 hujianghua. All rights reserved.
//

#import "AppClassCollectionViewCell.h"
@interface AppClassCollectionViewCell()
//应用图标
@property (weak, nonatomic) IBOutlet UIImageView *appImage;
//应用名称
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;

@end

@implementation AppClassCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    //[self setViewCorner:self.appImage];
}

-(void)setClassModel:(ZLNClassModel *)classModel{
    _classModel=classModel;
    
    self.appImage.image=[UIImage imageNamed:classModel.classImage];
    self.nameLbl.text=classModel.className;
}

-(void)setViewCorner:(UIView*)view{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:5];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame=view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask=maskLayer;
}
@end
