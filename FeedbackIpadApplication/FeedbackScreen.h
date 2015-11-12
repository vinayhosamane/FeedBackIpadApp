//
//  FeedbackScreen.h
//  FeedbackIpadApplication
//
//  Created by Hosamane K N, Vinay (ASPL) on 10/27/15.
//  Copyright (c) 2015 Hosamane K N, Vinay (ASPL). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedbackScreen : UIViewController

@property(strong,nonatomic)IBOutlet UIButton *bad;

@property(strong,nonatomic)IBOutlet UIButton *average;
@property(strong,nonatomic)IBOutlet UIButton *good;

@property(strong,nonatomic)IBOutlet UIView *badView;
@property(strong,nonatomic)IBOutlet UIView *averageView;
@property(strong,nonatomic)IBOutlet UIView *goodView;

-(IBAction)badAction:(id)sender;
-(IBAction)averageAction:(id)sender;
-(IBAction)goodAction:(id)sender;
-(IBAction)reportAction:(id)sender;
-(IBAction)clearAction:(id)sender;
@end
