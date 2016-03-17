//
//  ViewController.m
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import "ViewController.h"
#import "JXVerticalStackView.h"

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) JXVerticalStackView *vStackView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onRightItem)];
    
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
}

- (void)onRightItem
{
    [self.vStackView addSubview:[self generateRandomView]];
}

- (UIView *)generateRandomView
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, arc4random_uniform(50) + 30)];
    view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    view.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [view addGestureRecognizer:tap];
    return view;
}

- (void)onTap:(UITapGestureRecognizer *)tap
{
    UIView *view = tap.view;
    [view removeFromSuperview];
}

@end
