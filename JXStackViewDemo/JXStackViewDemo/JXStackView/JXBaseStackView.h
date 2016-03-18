//
//  JXBaseStackView.h
//  JXStackViewDemo
//
//  Created by JiongXing on 16/3/18.
//  Copyright © 2016年 LiangJiongXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXBaseStackView : UIView

/// 间隔
@property (nonatomic, assign) CGFloat contentSpacing;

/// Size变化后回调
@property (nonatomic, copy) void (^didChangeSize)(CGSize size);

/// 计算所需要的size
- (CGSize)calcSizeThatFits:(CGSize)size needLayoutUpdate:(BOOL)update;

@end
