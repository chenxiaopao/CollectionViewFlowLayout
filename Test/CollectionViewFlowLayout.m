
//
//  CollectionViewFlowLayout.m
//  Test
//
//  Created by TB-mac-120 on 2019/8/20.
//  Copyright © 2019 TB-mac-120. All rights reserved.
//

#import "CollectionViewFlowLayout.h"
@interface CollectionViewFlowLayout ()
@property (nonatomic,strong) NSMutableArray *attributesArray;
@end

@implementation CollectionViewFlowLayout


- (void)prepareLayout{
    [super prepareLayout];
    self.attributesArray = [NSMutableArray array];
    if (self.pageWidth == 0){
        self.pageWidth = UIScreen.mainScreen.bounds.size.width;
    }
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    for (int i=0; i<count; i++) {
        UICollectionViewLayoutAttributes *attributes = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        [self.attributesArray addObject:attributes];
    }
    
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    NSInteger index = indexPath.item;
    NSInteger page = index/(self.row * self.column);
    
    CGFloat width = self.itemSize.width;
    CGFloat height = self.itemSize.height;
    CGFloat originX = index % self.column * (width + self.minimumInteritemSpacing) + page*self.pageWidth;
    CGFloat originY = index/self.column%self.row*(height+self.minimumLineSpacing);
    NSLog(@"%f,%f",originX,originY);
    attributes.frame = CGRectMake(originX, originY, width, height);
    return attributes;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return self.attributesArray;
}

- (CGSize)collectionViewContentSize{
    CGFloat width = ceil(self.attributesArray.count/(CGFloat)(self.row*self.column))*self.pageWidth;
    return CGSizeMake(width, 0);
}
@end
