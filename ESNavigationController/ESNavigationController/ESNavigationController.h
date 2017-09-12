//
//  ESNavigationController.h
//  Reservoir
//
//  Created by codeLocker on 2017/9/12.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESNavigationController : UINavigationController
/** UINavigationBar背景色 */
@property (nonatomic, strong) UIColor *barTintColor;
/** UINavigationBar元素颜色 */
@property (nonatomic, strong) UIColor *tintColor;
/** UINavigationBar背景是否透明 */
@property (nonatomic, assign) BOOL isTranslucent;
/** UINavigationBar标题 */
@property (nonatomic, strong) UIFont *titleFont;
/** UINavigationBar标题字体大小 */
@property (nonatomic, strong) UIColor *titleColor;
/** UINavigationBar底部黑线是否隐藏 */
@property (nonatomic, assign) BOOL hideLine;
@end
