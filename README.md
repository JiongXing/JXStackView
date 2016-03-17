# JXStackView
栈式布局容器

### 头文件
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

### 使用示例
self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
[self.view addSubview:self.scrollView];

self.vStackView = [[JXVerticalStackView alloc] init];
[self.scrollView addSubview:self.vStackView];

// 高度初始化可为0，会自动计算；宽度需传值
self.vStackView.frame = CGRectMake(0, 0, self.scrollView.frame.size.width, 0);

// size变化后回调
__weak typeof(self) weakSelf = self;
[self.vStackView setDidChangeSize:^(CGSize size) {
weakSelf.scrollView.contentSize = size;
}];

// 添加子view
for (NSInteger index = 0; index < 5; index ++)
{
[self.vStackView addSubview:[self generateRandomView]];
}

![image](https://github.com/JiongXing/JXStackView/raw/master/screenshots/screenshots1.png)
### 如果能帮到您，给颗星星吧 ^_^
