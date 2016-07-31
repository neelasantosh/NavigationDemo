//
//  RegistrationViewController.h
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textName;
@property (strong, nonatomic) IBOutlet UITextField *textEmail;
@property (strong, nonatomic) IBOutlet UITextField *textmobile;
@property (strong, nonatomic) IBOutlet UITextField *textPassword;

- (IBAction)Submit:(id)sender;

@end
