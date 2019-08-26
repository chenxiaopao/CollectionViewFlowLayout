
//
//  CollectionViewCell.m
//  Test
//
//  Created by TB-mac-120 on 2019/8/20.
//  Copyright © 2019 TB-mac-120. All rights reserved.
//

#import "CollectionViewCell.h"

@interface CollectionViewCell ()
@property (nonatomic,strong) UILabel *textLabel;
@end

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubViews];
    }
    return self;
}

- (void)initSubViews{
    self.textLabel = ({
        UILabel *label = [[UILabel alloc]initWithFrame:self.contentView.bounds];
        label.textAlignment = NSTextAlignmentCenter;
        label.layer.borderWidth = 1;
        label;
    });
    [self.contentView addSubview:self.textLabel];
}


- (void)setText:(NSString *)text{
    _text = text;
    self.textLabel.text = text;
}

@end
