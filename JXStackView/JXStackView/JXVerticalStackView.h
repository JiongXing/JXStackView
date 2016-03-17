//
//  JXVerticalStackView.h
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, JXVerticalStackViewAlignment) {
    JXVerticalStackViewAlignmentFill = 0, // 拉伸以充满整行
    JXVerticalStackViewAlignmentLeft, // 左对齐
    JXVerticalStackViewAlignmentCenter, // 居中
    JXVerticalStackViewAlignmentRight, // 右对齐
};

@interface JXVerticalStackView : UIView

/// 左右对齐方式
@property (nonatomic, assign) JXVerticalStackViewAlignment alignment;

/// 间隔
@property (nonatomic, assign) CGFloat contentSpacing;

@end