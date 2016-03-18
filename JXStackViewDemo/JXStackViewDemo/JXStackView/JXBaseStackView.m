//
//  JXBaseStackView.m
//  JXStackViewDemo
//
//  Created by JiongXing on 16/3/18.
//  Copyright © 2016年 LiangJiongXing. All rights reserved.
//

#import "JXBaseStackView.h"

@implementation JXBaseStackView

- (void)setContentSpacing:(CGFloat)contentSpacing
{
    _contentSpacing = contentSpacing;
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self calcSizeThatFits:self.frame.size needLayoutUpdate:YES];
}

- (CGSize)calcSizeThatFits:(CGSize)size needLayoutUpdate:(BOOL)update
{
    return CGSizeZero;
}

- (CGSize)sizeThatFits:(CGSize)size
{
    return [self calcSizeThatFits:self.frame.size needLayoutUpdate:NO];
}

- (void)sizeToFit
{
    CGRect frame = self.frame;
    frame.size = [self calcSizeThatFits:self.frame.size needLayoutUpdate:YES];
    self.frame = frame;
}

@end
