//
//  JXVerticalStackView.m
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import "JXVerticalStackView.h"

@implementation JXVerticalStackView

- (CGSize)calcSizeThatFits:(CGSize)size needLayoutUpdate:(BOOL)update
{
    CGSize result = CGSizeMake(size.width, 0);
    for (UIView *view in self.subviews)
    {
        view.autoresizingMask = UIViewAutoresizingNone;
        if (view.hidden)
        {
            continue;
        }
        CGSize viewSize = view.frame.size;
        
        CGFloat width;
        if (update)
        {
            CGFloat x;
            switch (self.alignment)
            {
                case JXVerticalStackViewAlignmentLeft:
                    x = 0;
                    width = viewSize.width;
                    break;
                case JXVerticalStackViewAlignmentCenter:
                    x = size.width / 2.0 - viewSize.width / 2.0;
                    width = viewSize.width;
                    break;
                case JXVerticalStackViewAlignmentRight:
                    x = size.width - viewSize.width;
                    width = viewSize.width;
                    break;
                case JXVerticalStackViewAlignmentFill:
                default:
                    x = 0;
                    width = size.width;
                    break;
            }
            view.frame = CGRectMake(x, result.height, width, viewSize.height);
        }
        result.height += viewSize.height + self.contentSpacing;
        result.width = MAX(result.width, width);
    }
    
    result.height -= self.contentSpacing;
    result.height = MAX(0.0f, result.height);
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