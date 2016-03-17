//
//  JXStackView.h
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXStackView : UIView

/// 间隔
@property (nonatomic, assign) CGFloat contentSpacing;

/// Size变化后回调
@property (nonatomic, copy) void (^didChangeSize)(CGSize size);

/// 计算所需要的size
- (CGSize)calcSizeThatFits:(CGSize)size needLayoutUpdate:(BOOL)update;

@end
