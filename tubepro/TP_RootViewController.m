//
//  TP_RootViewController.m
//  tubepro
//
//  Created by thanhhaitran on 1/18/16.
//  Copyright © 2016 thanhhaitran. All rights reserved.
//

#import "TP_RootViewController.h"

#import "TP_First_ViewController.h"

#import "TP_Second_ViewController.h"

#import "TP_Third_ViewController.h"

#import "TP_Fourth_ViewController.h"

@interface TP_RootViewController ()

@end

@implementation TP_RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initTabBar];
}

- (void)initTabBar
{
    TP_First_ViewController * first = [TP_First_ViewController new];
    UINavigationController *nav1 = [[UINavigationController alloc]
                                    initWithRootViewController:first];
    first.title = @"List";
    nav1.tabBarItem.image = [UIImage imageNamed:@"menu"];
    
    TP_Second_ViewController * second = [TP_Second_ViewController new];
    second.title = @"Favourites";
    UINavigationController *nav2 = [[UINavigationController alloc]
                                    initWithRootViewController:second];
    nav2.tabBarItem.image = [UIImage imageNamed:@"channel"];
    
    TP_Third_ViewController * third = [TP_Third_ViewController new];
    third.title = @"Search";
    UINavigationController *nav3 = [[UINavigationController alloc]
                                    initWithRootViewController:third];
    nav3.tabBarItem.image = [UIImage imageNamed:@"favs"];
    
    TP_Fourth_ViewController * fourth = [TP_Fourth_ViewController new];
    fourth.title = @"Settings";
    UINavigationController *nav4 = [[UINavigationController alloc]
                                    initWithRootViewController:fourth];
    nav4.tabBarItem.image = [UIImage imageNamed:@"setting"];
    
    self.viewControllers = @[nav1, nav2, nav3, nav4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
