//
//  ViewController.h
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textEmail;

@property (strong, nonatomic) IBOutlet UITextField *textPassword;

- (IBAction)login:(id)sender;

- (IBAction)signUp:(id)sender;


@end

