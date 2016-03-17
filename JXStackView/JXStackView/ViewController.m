//
//  ViewController.m
//  JXStackView
//
//  Created by JiongXing on 16/3/17.
//  Copyright © 2016年 jiongxing. All rights reserved.
//

#import "ViewController.h"
#import "JXVerticalStackView.h"
#import "JXHorizontalStackView.h"

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *vScrollView;
@property (nonatomic, strong) JXVerticalStackView *vStackView;

@property (nonatomic, strong) UIScrollView *hScrollView;
@property (nonatomic, strong) JXHorizontalStackView *hStackView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onRightItem)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(onLeftItem)];
    
    /* 竖直容器 */
    self.vScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.vScrollView];
    
    self.vStackView = [[JXVerticalStackView alloc] init];
    [self.vScrollView addSubview:self.vStackView];
    
    // 高度初始化可为0，会自动计算；宽度需传值
    self.vStackView.frame = CGRectMake(0, 0, self.vScrollView.frame.size.width, 0);
    
    // size变化后回调
    __weak typeof(self) weakSelf = self;
    [self.vStackView setDidChangeSize:^(CGSize size) {
        weakSelf.vScrollView.contentSize = size;
    }];
    
    // 添加子view
    for (NSInteger index = 0; index < 5; index ++)
    {
        [self.vStackView addSubview:[self generateRandomView]];
    }
    self.vStackView.contentSpacing = 10;
    self.vStackView.alignment = JXVerticalStackViewAlignmentCenter;
    
    
    /* 水平容器 */
    self.hScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.hScrollView];
    
    self.hStackView = [[JXHorizontalStackView alloc] init];
    [self.hScrollView addSubview:self.hStackView];
    
    // 宽度初始化可为0，会自动计算；高度需传值
    self.hStackView.frame = CGRectMake(0, 64, 0, 60);
    
    // size变化后回调
    [self.hStackView setDidChangeSize:^(CGSize size) {
        weakSelf.hScrollView.contentSize = size;
    }];
    
    // 添加子view
    for (NSInteger index = 0; index < 5; index ++)
    {
        [self.hStackView addSubview:[self generateRandomView]];
    }
    self.hStackView.contentSpacing = 6;
    self.hStackView.alignment = JXHorizontalStackViewAlignmentCenter;
    
    // 切换
    self.vScrollView.hidden = YES;
    self.hScrollView.hidden = !self.vScrollView.hidden;
}

- (void)onRightItem
{
    if (!self.vScrollView.hidden)
    {
        [self.vStackView addSubview:[self generateRandomView]];
    }
    else if (!self.hScrollView.hidden)
    {
        [self.hStackView addSubview:[self generateRandomView]];
    }
}

- (void)onLeftItem
{
    self.vScrollView.hidden = !self.vScrollView.hidden;
    self.hScrollView.hidden = !self.vScrollView.hidden;
}

- (UIView *)generateRandomView
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, arc4random_uniform(50) + 30, arc4random_uniform(50) + 30)];
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
