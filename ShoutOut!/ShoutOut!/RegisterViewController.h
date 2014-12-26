//
//  RegisterViewController.h
//  ShoutOut!
//
//  Created by Cherry on 12/25/2557 BE.
//  Copyright (c) 2557 Phatsawee Puttarakkun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "AppDelegate.h"

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassword;
@property (weak, nonatomic) IBOutlet UITextField *userID;

- (IBAction)submit:(id)sender;

@end
