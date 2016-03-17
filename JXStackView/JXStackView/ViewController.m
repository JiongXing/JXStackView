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

@property (nonatomic, strong) JXVerticalStackView *vStackView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onRightItem)];
    
    self.vStackView = [[JXVerticalStackView alloc] initWithFrame:CGRectMake(10, 64 + 10, 300, 200)];
    [self.view addSubview:self.vStackView];
    
    for (NSInteger index = 0; index < 3; index ++)
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
