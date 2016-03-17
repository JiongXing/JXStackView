//
//  JXHorizontalStackView.h
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import "JXStackView.h"

typedef NS_ENUM(NSUInteger, JXHorizontalStackViewAlignment) {
    JXHorizontalStackViewAlignmentFill = 0, // 拉伸以充满整行
    JXHorizontalStackViewAlignmentTop, // 顶部对齐
    JXHorizontalStackViewAlignmentCenter, // 居中
    JXHorizontalStackViewAlignmentBottom, // 底部对齐
};

@interface JXHorizontalStackView : JXStackView

/// 上下对齐方式
@property (nonatomic, assign) JXHorizontalStackViewAlignment alignment;

@end
