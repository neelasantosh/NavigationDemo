//
//  HomeViewController.h
//  NavigationDemo
//
//  Created by Rajesh on 14/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelName;

@property (strong, nonatomic) IBOutlet UILabel *labelEmail;

@property (strong, nonatomic) IBOutlet UILabel *labelMobile;

-(void)showEmpListController;
@end
