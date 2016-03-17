//
//  JXStackView.m
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import "JXStackView.h"

@implementation JXStackView

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
