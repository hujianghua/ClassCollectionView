//
//  ViewController.m
//  ClassCollectionView
//
//  Created by hujianghua on 2019/5/25.
//  Copyright © 2019年 hujianghua. All rights reserved.
//

#import "ViewController.h"
#import "ZLNAppClassView.h"
#import <Masonry.h>

@interface ViewController ()
//应用分类
@property (nonatomic,strong) NSMutableArray *classArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //横向滑动选择列表
    ZLNAppClassView *classView=[[ZLNAppClassView alloc] init];
    classView.layer.borderWidth=0.5;
    classView.layer.borderColor=UIColor.lightGrayColor.CGColor;
    [self.view addSubview:classView];
    [classView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.centerY.mas_equalTo(self.view.mas_centerY);
        make.height.mas_equalTo(120);
    }];
    
    classView.classArray=self.classArray;
    classView.selectBlock = ^(NSInteger index) {
        NSLog(@"you select %ld item",index);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSMutableArray*)classArray{
    if (!_classArray) {
        _classArray=[NSMutableArray new];
        ZLNClassModel *modelFirst=[ZLNClassModel new];
        modelFirst.classID=@"1";
        modelFirst.className=@"省钱安装";
        modelFirst.classImage=@"test";
        [_classArray addObject:modelFirst];
        
        ZLNClassModel *modelSecond=[ZLNClassModel new];
        modelSecond.classID=@"2";
        modelSecond.className=@"限时免费";
        modelSecond.classImage=@"test";
        [_classArray addObject:modelSecond];
        
        ZLNClassModel *modelThird=[ZLNClassModel new];
        modelThird.classID=@"3";
        modelThird.className=@"装机必备";
        modelThird.classImage=@"test";
        [_classArray addObject:modelThird];
        
        ZLNClassModel *modelFouth=[ZLNClassModel new];
        modelFouth.classID=@"4";
        modelFouth.className=@"应用专题";
        modelFouth.classImage=@"test";
        [_classArray addObject:modelFouth];
        
        ZLNClassModel *modelFifth=[ZLNClassModel new];
        modelFifth.classID=@"5";
        modelFifth.className=@"游戏专题";
        modelFifth.classImage=@"test";
        [_classArray addObject:modelFifth];
        
        ZLNClassModel *modelSix=[ZLNClassModel new];
        modelSix.classID=@"6";
        modelSix.className=@"赚钱专题";
        modelSix.classImage=@"test";
        [_classArray addObject:modelSix];
    }
    return _classArray;
}

@end
