//
//  ViewController.m
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "ViewController.h"
#import "RegistrationViewController.h"
#import "HomeViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize textEmail,textPassword;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    
    NSString *strStoredEmail = [def objectForKey:@"email"];
    
    NSString *strStoredPassword = [def objectForKey:@"password"];
    
    
    if ([strStoredEmail isEqual:textEmail.text] && [strStoredPassword isEqual:textPassword.text])
    {
        HomeViewController *homeCon = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
        
        [self.navigationController pushViewController:homeCon animated:true];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Login" message:@"Invalid email/password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [alert show];
    }
    
    
}

- (IBAction)signUp:(id)sender {
    
    //load registration controller
    RegistrationViewController *regCon = [[RegistrationViewController alloc]initWithNibName:@"RegistrationViewController" bundle:nil];
    [self.navigationController pushViewController:regCon animated:true];
    
}



@end
