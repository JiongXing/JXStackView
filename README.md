# JXStackView
栈式布局容器

===

### 竖直布局
```cpp
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

/// Size变化后回调
@property (nonatomic, copy) void (^didChangeSize)(CGSize size);

@end
```
===
### 水平布局
```cpp
typedef NS_ENUM(NSUInteger, JXHorizontalStackViewAlignment) {
JXHorizontalStackViewAlignmentFill = 0, // 拉伸以充满整行
JXHorizontalStackViewAlignmentTop, // 顶部对齐
JXHorizontalStackViewAlignmentCenter, // 居中
JXHorizontalStackViewAlignmentBottom, // 底部对齐
};

@interface JXHorizontalStackView : UIView

/// 上下对齐方式
@property (nonatomic, assign) JXHorizontalStackViewAlignment alignment;

/// 间隔
@property (nonatomic, assign) CGFloat contentSpacing;

/// Size变化后回调
@property (nonatomic, copy) void (^didChangeSize)(CGSize size);

@end
```

![image](https://github.com/JiongXing/JXStackView/raw/master/screenshots/ScreenShot1.png)
![image](https://github.com/JiongXing/JXStackView/raw/master/screenshots/ScreenShot2.png)
===
### 如果能帮到您，给颗星星吧 ^_^
