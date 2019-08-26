//
//  CollectionViewFlowLayout.h
//  Test
//
//  Created by TB-mac-120 on 2019/8/20.
//  Copyright © 2019 TB-mac-120. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewFlowLayout : UICollectionViewFlowLayout

@property (nonatomic,assign) NSInteger row;
@property (nonatomic,assign) NSInteger column;
@property (nonatomic,assign) NSInteger pageWidth;
@end

NS_ASSUME_NONNULL_END
