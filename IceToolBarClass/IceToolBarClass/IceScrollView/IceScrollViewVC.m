//
//  IceScrollViewVC.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/28.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "IceScrollViewVC.h"
#import "IceCirculationView.h"

@interface IceScrollViewVC ()<IceCirculationViewDelegate>

@end

@implementation IceScrollViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    //这个数组中，可以存放本地图片，也可以存放网络图片路径
    NSArray *imgNameArr = @[@"picture1",@"picture5",@"http://img01.taopic.com/160117/318752-16011F9334648.jpg",@"picture2",@"picture3",@"picture4"];
    IceCirculationView *circulationView = [[IceCirculationView alloc] initWithFrame:CGRectMake(0, 0, 300, 200) Images:imgNameArr];
    circulationView.center = self.view.center;
    circulationView.delegate = self;
    [self.view addSubview:circulationView];
}

-(void)iceCirculationView:(IceCirculationView *)circulationView whichPicureBeChanged:(NSInteger)index{
    NSLog(@"点击了第%ld张图片",index);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
