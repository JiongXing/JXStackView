//
//  JXVerticalStackView.h
//  JXStackViewDemo
//
//  Created by JiongXing on 16/3/18.
//  Copyright © 2016年 LiangJiongXing. All rights reserved.
//

#import "JXBaseStackView.h"

typedef NS_ENUM(NSUInteger, JXVerticalStackViewAlignment) {
    JXVerticalStackViewAlignmentFill = 0, // 拉伸以充满整行
    JXVerticalStackViewAlignmentLeft, // 左对齐
    JXVerticalStackViewAlignmentCenter, // 居中
    JXVerticalStackViewAlignmentRight, // 右对齐
};

@interface JXVerticalStackView : JXBaseStackView

/// 左右对齐方式
@property (nonatomic, assign) JXVerticalStackViewAlignment alignment;

@end
