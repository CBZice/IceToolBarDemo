//
//  ViewController.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/12.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "ViewController.h"
#import "BtnClickViewController.h"
#import "BezierPathAndTouchEventVC.h"
#import "IceScrollViewVC.h"
#import "IceImageViewVC.h"
#import "PopoverViewVC.h"


@interface ViewController ()

/*** 名称 **/
@property (nonatomic, strong) NSArray *titlesArr;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _titlesArr = @[@"按钮弹出textVeiw",@"贝塞尔曲线绘制",@"轮播图",@"点击图片放大",@"菜单弹框"];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _titlesArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellStr = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    cell.textLabel.text = _titlesArr[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[BtnClickViewController new] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[BezierPathAndTouchEventVC new] animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:[IceScrollViewVC new] animated:YES];
            break;
        case 3:
            [self.navigationController pushViewController:[IceImageViewVC new] animated:YES];
            break;
        case 4:
            [self.navigationController pushViewController:[PopoverViewVC new] animated:YES];
            
            break;
        default:
            break;
    }
}


@end
