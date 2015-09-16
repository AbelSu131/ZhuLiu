//
//  CYXTabBarController.m
//  ZhuLiu
//
//  Created by abel on 15/9/16.
//  Copyright © 2015年 abel. All rights reserved.
//

#import "CYXTabBarController.h"
#import "CYXOneViewController.h"
#import "CYXTwoViewController.h"
#import "CYXThreeViewController.h"
#import "CYXFourViewController.h"

@interface CYXTabBarController ()

@end

@implementation CYXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.VC
    
    //添加第一个控制器
    //1.1 初始化
    CYXOneViewController *oneVC = [[CYXOneViewController alloc]init];
    //1.2 把oneVC添加为UINavigationController的根控制器
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];
    //设置tabBar的标题
    nav1.title = @"首页";
    //设置导航栏背景颜色
    nav1.navigationBar.barTintColor = [UIColor yellowColor];
    //设置tabBar的图标
    nav1.tabBarItem.image = [UIImage imageNamed:@"icon_tabbar_merchant_normal"];
    //设置navigationBar的标题
    oneVC.navigationItem.title = @"这是导航栏标题1";
    //设置背景色
    oneVC.view.backgroundColor = [UIColor whiteColor];
    //1.3 把UINavigationController交给UITabBarController管理
    [self addChildViewController:nav1];
    
    //添加第二个控制器
    CYXTwoViewController *twoVC = [[CYXTwoViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoVC];
    nav2.title = @"我的";
    //设置导航栏背景图片
    //[nav2.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    nav2.tabBarItem.image = [UIImage imageNamed:@"icon_tabbar_mine"];
    twoVC.navigationItem.title = @"这是导航栏标题2";
    twoVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav2];
    
    //添加第三个控制器
    CYXThreeViewController *threeVC = [[CYXThreeViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:threeVC];
    nav3.title = @"开门";
    nav3.tabBarItem.image = [UIImage imageNamed:@"icon_tabbar_onsite"];
    threeVC.navigationItem.title = @"这是导航栏标题3";
    threeVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav3];
    
    //添加第四个控制器
    CYXFourViewController *fourVC = [[CYXFourViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:fourVC];
    nav4.title = @"更多";
    nav4.tabBarItem.image = [UIImage imageNamed:@"icon_tabbar_misc"];
    fourVC.navigationItem.title = @"这是导航栏标题4";
    fourVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
