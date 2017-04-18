//
//  ViewController.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/12.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "ViewController.h"
#import "BtnClickViewController.h"

@interface ViewController ()

/*** 名称 **/
@property (nonatomic, strong) NSArray *titlesArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _titlesArr = @[@"按钮弹出textVeiw"];
    NSLog(@"github");
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
            
        default:
            break;
    }
}


@end
