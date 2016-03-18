//
//  JXHorizontalStackView.h
//  JXStackViewDemo
//
//  Created by JiongXing on 16/3/18.
//  Copyright © 2016年 LiangJiongXing. All rights reserved.
//

#import "JXBaseStackView.h"

typedef NS_ENUM(NSUInteger, JXHorizontalStackViewAlignment) {
    JXHorizontalStackViewAlignmentFill = 0, // 拉伸以充满整行
    JXHorizontalStackViewAlignmentTop, // 顶部对齐
    JXHorizontalStackViewAlignmentCenter, // 居中
    JXHorizontalStackViewAlignmentBottom, // 底部对齐
};

@interface JXHorizontalStackView : JXBaseStackView

/// 上下对齐方式
@property (nonatomic, assign) JXHorizontalStackViewAlignment alignment;

@end
