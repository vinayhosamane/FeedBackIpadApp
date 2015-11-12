//
//  AppDelegate.h
//  FeedbackIpadApplication
//
//  Created by Hosamane K N, Vinay (ASPL) on 10/27/15.
//  Copyright (c) 2015 Hosamane K N, Vinay (ASPL). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedbackScreen.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic)UINavigationController *navigation;

@property(strong,nonatomic) FeedbackScreen *feedback;


@end

