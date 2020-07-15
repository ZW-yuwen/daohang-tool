//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    //设置导航栏风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //风格设置透明/不透明
    self.navigationController.navigationBar.translucent = YES;
    
    //导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    //设置导航栏元素项目按钮的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = NO;
    
    self.title = @"HOME";
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    //实现工具栏对象
    //默认时工具栏隐藏
    self.navigationController.toolbarHidden = NO;
    
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem* btn1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    UIBarButtonItem* btn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btnImage setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    btnImage.frame = CGRectMake(0, 0, 60, 60);
    
    UIBarButtonItem* btn3 = [[UIBarButtonItem alloc] initWithCustomView:btnImage];
    
    //固定宽度占位按钮
    UIBarButtonItem* btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF1.width = 60;
    
    //创建自动计算宽度按钮
    UIBarButtonItem* btnF2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    //按钮数组的创建
    NSArray* arrayBtn = [NSArray arrayWithObjects:btn1,btnF2, btn2, btnF2,btn3, nil];
    
    self.toolbarItems = arrayBtn;
    

    // Do any additional setup after loading the view.
}

-(void) pressNext{
    
    VCSecond* vc2 = [[VCSecond alloc] init];
    
    [self.navigationController pushViewController:vc2 animated:YES];
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
