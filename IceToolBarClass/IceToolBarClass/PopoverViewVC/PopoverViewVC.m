//
//  PopoverViewVC.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/28.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "PopoverViewVC.h"
#import "PopoverView.h"

@interface PopoverViewVC ()

@end

@implementation PopoverViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addRightNavBar];
}

- (void)addRightNavBar{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [btn setImage:[UIImage imageNamed:@"Course_More"] forState:UIControlStateNormal];
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, - 23);
    [btn addTarget:self action:@selector(touchRight:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* _navBarItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = _navBarItem;
}

- (void)touchRight:(UIButton *)sender{
    NSLog(@"点击了更多");
    PopoverView *popoverView = [PopoverView popoverView];
    popoverView.style = PopoverViewStyleDark;
    popoverView.showShade = YES; // 显示阴影背景
    popoverView.moveX = 9;
    [popoverView showToView:sender withActions:[self QQActions]];
}

- (NSArray<PopoverAction *> *)QQActions {
    // 分享课程 action
    PopoverAction *multichatAction = [PopoverAction actionWithImage:[UIImage imageNamed:@"More_Share_Course"] title:@"分享课程" handler:^(PopoverAction *action) {
#pragma mark - 该Block不会导致内存泄露, Block内代码无需刻意去设置弱引用.
    }];
    // 编辑信息 action
    PopoverAction *addFriAction = [PopoverAction actionWithImage:[UIImage imageNamed:@"More_Edit_Message"] title:@"编辑信息" handler:^(PopoverAction *action) {

    }];
    // 删除课程 action
    PopoverAction *QRAction = [PopoverAction actionWithImage:[UIImage imageNamed:@"More_Delete_Course"] title:@"删除课程" handler:^(PopoverAction *action) {
    }];
    // 付款 action
    PopoverAction *payMoneyAction = [PopoverAction actionWithImage:[UIImage imageNamed:@"More_Pay_Money"] title:@"支付押金" handler:^(PopoverAction *action) {

    }];
    
    return @[multichatAction, addFriAction, QRAction, payMoneyAction];
}

@end
