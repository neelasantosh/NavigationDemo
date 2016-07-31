//
//  RegistrationViewController.m
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "RegistrationViewController.h"
#import "EmpListControllerTableViewController.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

@synthesize textPassword,textEmail,textName,textmobile;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Registration";
    
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)Submit:(id)sender
{
    //Save the data
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];//opens file into storage
    
    //[def setObject:<#(id)#> forKey:<#(NSString *)#>]
    
    [def setObject:textName.text forKey:@"name"];
    [def setObject:textEmail.text forKey:@"email"];
    [def setObject:textmobile.text forKey:@"mobile"];
    [def setObject:textPassword.text forKey:@"password"];
    
    [def synchronize];//synchronize means save data
    
    //close current controller
    [self.navigationController popViewControllerAnimated:true];
    
    
}
@end
