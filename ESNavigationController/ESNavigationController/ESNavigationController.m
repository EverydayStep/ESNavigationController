//
//  ESNavigationController.m
//  Reservoir
//
//  Created by codeLocker on 2017/9/12.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ESNavigationController.h"

@interface ESNavigationController ()

@end

@implementation ESNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setter && Getter
- (void)setBarTintColor:(UIColor *)barTintColor {
    _barTintColor = barTintColor;
    self.navigationBar.barTintColor = _barTintColor;
}

- (void)setTintColor:(UIColor *)tintColor {
    _tintColor = tintColor;
    self.navigationBar.tintColor = _tintColor;
}

- (void)setIsTranslucent:(BOOL)isTranslucent {
    _isTranslucent = isTranslucent;
    self.navigationBar.translucent = _isTranslucent;
}

- (void)setTitleFont:(UIFont *)titleFont {
    _titleFont = titleFont;
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName:self.titleColor ? : [UIColor blackColor],
                                                 NSFontAttributeName:self.titleFont ? : [UIFont systemFontOfSize:15]
                                                 }];
}

- (void)setTitleColor:(UIColor *)titleColor {
    _titleColor = titleColor;
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName:self.titleColor ? : [UIColor blackColor],
                                                 NSFontAttributeName:self.titleFont ? : [UIFont systemFontOfSize:15]
                                                 }];
}

- (void)setHideLine:(BOOL)hideLine {
    _hideLine = hideLine;
    if (_hideLine) {
        [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
        [self.navigationBar setShadowImage:[[UIImage alloc] init]];
    }
}

@end
