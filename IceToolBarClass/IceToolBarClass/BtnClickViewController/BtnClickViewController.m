//
//  ViewController.m
//  4。18、
//
//  Created by cooptec on 2017/4/18.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "BtnClickViewController.h"

@interface BtnClickViewController ()<UITextFieldDelegate,UITextViewDelegate>
{
    UIView *commentsView;
    UITextView *commentText;
}
@end

@implementation BtnClickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick{
    
    [commentText resignFirstResponder];
    
    [self createCommentsView];
    [commentText becomeFirstResponder];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [commentText resignFirstResponder];
}


- (void)createCommentsView {
    if (!commentsView) {
        
        commentsView = [[UIView alloc] initWithFrame:CGRectMake(0.0, [UIScreen mainScreen].bounds.size.height - 40.0, [UIScreen mainScreen].bounds.size.width, 40.0)];
        commentsView.backgroundColor = [UIColor whiteColor];
        
        commentText = [[UITextView alloc] initWithFrame:CGRectInset(commentsView.bounds, 5.0, 5.0)];
        commentText.layer.borderColor   = [UIColor grayColor].CGColor;
        commentText.layer.borderWidth   = 1.0;
        commentText.layer.cornerRadius  = 2.0;
        commentText.layer.masksToBounds = YES;
        
        commentText.inputAccessoryView  = commentsView;
        commentText.backgroundColor     = [UIColor clearColor];
        commentText.returnKeyType       = UIReturnKeySend;
        commentText.delegate	    = self;
        commentText.font		= [UIFont systemFontOfSize:15.0];
        [commentsView addSubview:commentText];
    }
    [self.view.window addSubview:commentsView];//添加到window上或者其他视图也行，只要在视图以外就好了
    [commentText becomeFirstResponder];//让textView成为第一响应者（第一次）这次键盘并未显示出来，（个人觉得这里主要是将commentsView设置为commentText的inputAccessoryView,然后再给一次焦点就能成功显示）
}
- (void)showCommentText {
    [self createCommentsView];
    
    [commentText becomeFirstResponder];//再次让textView成为第一响应者（第二次）这次键盘才成功显示
}

//响应return键的事件
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
replacementText:(NSString *)text
{
    //如果为回车则将键盘收起
    if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
        NSLog(@"%@",textView.text);
        textView.text = nil;
        [textView resignFirstResponder];
        //在这里做你响应return键的代码
        return NO; //这里返回NO，就代表return键值失效，即页面上按下return，不会出现换行，如果为yes，则输入页面会换行
    }
    return YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    [commentsView resignFirstResponder];
}

@end
