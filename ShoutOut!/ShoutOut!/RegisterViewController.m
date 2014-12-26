//
//  RegisterViewController.m
//  ShoutOut!
//
//  Created by Cherry on 12/25/2557 BE.
//  Copyright (c) 2557 Phatsawee Puttarakkun. All rights reserved.
//

#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "RegisterViewController.h"

@interface RegisterViewController ()

@property (nonatomic, strong) MSClient *client;
@property (nonatomic, strong) MSTable *memberTable;

@end

@implementation RegisterViewController

@synthesize email;
@synthesize password;
@synthesize confirmPassword;
@synthesize userID;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    _client = [(AppDelegate *) [[UIApplication sharedApplication] delegate] client];
    _memberTable = [_client tableWithName:@"member"];
    if(_memberTable)
        NSLog(@"MEMBER TABLE CONNECTED");
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

#pragma mark * UI Actions

- (IBAction)submit:(id)sender
{
    
    if(email.text.length == 0 || password.text.length == 0 || confirmPassword.text.length == 0 || userID.text.length == 0)
    {
        return;
    }
    
    NSDictionary *item = @{ @"email" : email.text,
                            @"password" : password.text,
                            @"userid" : userID.text
                         };
    
    [_memberTable insert:item completion:^(NSDictionary *insertedItem, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"Item inserted, id: %@", [insertedItem objectForKey:@"id"]);
        }
    }];
    
    email.text = @"";
    password.text = @"";
    confirmPassword.text = @"";
    userID.text = @"";
}

@end
