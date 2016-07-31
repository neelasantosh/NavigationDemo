//
//  HomeViewController.m
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "HomeViewController.h"
#import "EmpListControllerTableViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize labelEmail,labelMobile,labelName;
  
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //display user data
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    labelName.text = [def objectForKey:@"name"];
    labelEmail.text = [def objectForKey:@"email"];
    labelMobile.text = [def objectForKey:@"mobile"];
    
    self.navigationItem.title = @"Home";
    
    // add list button at right on navigation
    UIBarButtonItem *buttonList = [[UIBarButtonItem alloc]initWithTitle:@"EmployeeList" style:UIBarButtonItemStylePlain target:self action:@selector(showEmpListController)];
    
    self.navigationItem.rightBarButtonItem = buttonList;//adds button to right
    
    
}

-(void)showEmpListController
{
    NSLog(@"will show enp list controller ");
    EmpListControllerTableViewController *emplistCon = [[EmpListControllerTableViewController alloc]initWithNibName:@"EmpListControllerTableViewController" bundle:nil];
    [self.navigationController pushViewController:emplistCon animated:true];
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
