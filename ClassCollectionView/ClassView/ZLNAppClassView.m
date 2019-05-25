//
//  ZLNAppClassView.m
//  zln
//
//  Created by hujianghua on 2019/5/24.
//  Copyright © 2019年 hujianghua. All rights reserved.
//

#import "ZLNAppClassView.h"
#import <Masonry.h>
#import "AppClassCollectionViewCell.h"

@interface ZLNAppClassView()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong) UICollectionView *collectionView;
@end

@implementation ZLNAppClassView
-(instancetype)init{
    self=[super init];
    if (self) {
        [self setupUI];
        [self setConstraint];
    }
    return self;
}

-(void)setupUI{
    [self.collectionView registerNib:[UINib nibWithNibName:@"AppClassCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    [self addSubview:self.collectionView];
}

-(void)setConstraint{
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.bottom.mas_equalTo(0);
    }];
}

#pragma mark - UICollectionViewDataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.classArray.count;
}

- (__kindof  AppClassCollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    AppClassCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.classModel=self.classArray[indexPath.row];
    return cell;
}

#pragma mark - UICollectionViewDelegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.selectBlock) {
        self.selectBlock(indexPath.item);
    }
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(self.frame.size.width/4.0, self.frame.size.height);
}
#pragma mark - property
-(void)setClassArray:(NSArray *)classArray{
    _classArray=classArray;
    
    [self.collectionView reloadData];
}

-(UICollectionView*)collectionView{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing=0;
        layout.minimumInteritemSpacing=0;
        layout.sectionInset=UIEdgeInsetsMake(0, 0, 0, 0);
        layout.scrollDirection=UICollectionViewScrollDirectionHorizontal;
        
        _collectionView=[[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView.delegate=self;
        _collectionView.dataSource=self;
        _collectionView.backgroundColor=[UIColor clearColor];
        _collectionView.showsHorizontalScrollIndicator=NO;
        
    }
    return _collectionView;
}
@end
