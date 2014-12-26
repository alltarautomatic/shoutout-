//
//  AppDelegate.h
//  ShoutOut!
//
//  Created by Cherry on 12/20/2557 BE.
//  Copyright (c) 2557 Phatsawee Puttarakkun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MSClient *client;
@property (strong, nonatomic) MSTable *memberTable;

@end

