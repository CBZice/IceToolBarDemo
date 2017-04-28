//
//  BezierPathAndTouchEventVC.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/28.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "BezierPathAndTouchEventVC.h"
#import "MyView.h"
@interface BezierPathAndTouchEventVC ()<MyViewDelegate>
@property (nonatomic, strong) MyView *myView;
@end

@implementation BezierPathAndTouchEventVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //创建View 并在View内绘图
    self.view.backgroundColor = [UIColor whiteColor];
    [self createView];

}
- (void)createView{
    _myView = [[MyView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    _myView.backgroundColor = [UIColor whiteColor];
    _myView.delegate = self;
    [self.view addSubview:_myView];
}
-(void)myViewbeTouched{
    NSLog(@"%s",__FUNCTION__);
}

@end
