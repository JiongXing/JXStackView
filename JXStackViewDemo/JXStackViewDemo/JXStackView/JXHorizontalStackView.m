//
//  JXHorizontalStackView.m
//  JXStackViewDemo
//
//  Created by JiongXing on 16/3/18.
//  Copyright © 2016年 LiangJiongXing. All rights reserved.
//

#import "JXHorizontalStackView.h"

@implementation JXHorizontalStackView

- (CGSize)calcSizeThatFits:(CGSize)size needLayoutUpdate:(BOOL)update
{
    CGSize result = CGSizeMake(0, size.height);
    for (UIView *view in self.subviews)
    {
        view.autoresizingMask = UIViewAutoresizingNone;
        if (view.hidden)
        {
            continue;
        }
        CGSize viewSize = view.frame.size;
        
        CGFloat height;
        if (update)
        {
            CGFloat y;
            switch (self.alignment)
            {
                case JXHorizontalStackViewAlignmentTop:
                    y = 0;
                    height = viewSize.height;
                    break;
                case JXHorizontalStackViewAlignmentCenter:
                    y = size.height / 2.0 - viewSize.height / 2.0;
                    height = viewSize.height;
                    break;
                case JXHorizontalStackViewAlignmentBottom:
                    y = size.height - viewSize.height;
                    height = viewSize.height;
                    break;
                case JXHorizontalStackViewAlignmentFill:
                default:
                    y = 0;
                    height = size.height;
                    break;
            }
            view.frame = CGRectMake(result.width, y, viewSize.width, height);
        }
        result.width += viewSize.width + self.contentSpacing;
        result.height = MAX(result.height, height);
    }
    
    result.width -= self.contentSpacing;
    result.width = MAX(0.0f, result.width);
    if (update)
    {
        self.frame = (CGRect){self.frame.origin, result};
        if (self.didChangeSize)
        {
            self.didChangeSize(result);
        }
    }
    return result;
}

@end
