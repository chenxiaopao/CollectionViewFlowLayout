//
//  ViewController.m
//  Test
//
//  Created by TB-mac-120 on 2019/8/20.
//  Copyright © 2019 TB-mac-120. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewFlowLayout.h"
#import "CollectionViewCell.h"
@interface ViewController () <UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, copy) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    CGFloat SCREEN_WIDTH = UIScreen.mainScreen.bounds.size.width;
    self.collectionView = ({
        CollectionViewFlowLayout *layout = [[CollectionViewFlowLayout alloc]init];
        layout.row = 2;
        layout.column = 3;
        layout.itemSize = CGSizeMake(SCREEN_WIDTH/3, 100);
        layout.minimumInteritemSpacing = 0;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.minimumLineSpacing = 10;
        UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
        collectionView.backgroundColor = UIColor.whiteColor;
        collectionView.dataSource = self;
        collectionView.pagingEnabled = YES;
        [collectionView registerClass:CollectionViewCell.class forCellWithReuseIdentifier:@"cell"];
        collectionView;
    });
    [self.view addSubview:self.collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.text = self.dataArray[indexPath.row];
    return cell;
}

@end
