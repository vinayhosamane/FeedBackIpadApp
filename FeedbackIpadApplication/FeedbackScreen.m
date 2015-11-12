//
//  FeedbackScreen.m
//  FeedbackIpadApplication
//
//  Created by Hosamane K N, Vinay (ASPL) on 10/27/15.
//  Copyright (c) 2015 Hosamane K N, Vinay (ASPL). All rights reserved.
//

#import "FeedbackScreen.h"

@interface FeedbackScreen ()

@end

@implementation FeedbackScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSUserDefaults standardUserDefaults]setInteger:0 forKey:@"bad"];
    
    [[NSUserDefaults standardUserDefaults]setInteger:0 forKey:@"average"];
    
    [[NSUserDefaults standardUserDefaults]setInteger:0 forKey:@"good"];
    
    [[NSUserDefaults standardUserDefaults]synchronize];
    
    
    NSLog(@"this is updated project");
    
    self.title=@"Feedback Form";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)badAction:(id)sender
{
    NSLog(@"bad action");
    NSInteger x=[[NSUserDefaults standardUserDefaults]integerForKey:@"bad"];
    
    x=x+1;
    
    [[NSUserDefaults standardUserDefaults]setInteger:x forKey:@"bad"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    


}
-(IBAction)averageAction:(id)sender
{
    NSLog(@"average action");
    NSInteger x=[[NSUserDefaults standardUserDefaults]integerForKey:@"average"];
    
    x=x+1;
    
    [[NSUserDefaults standardUserDefaults]setInteger:x forKey:@"average"];
    [[NSUserDefaults standardUserDefaults]synchronize];

}
-(IBAction)goodAction:(id)sender
{
     NSLog(@"good action");
    NSInteger x=[[NSUserDefaults standardUserDefaults]integerForKey:@"good"];
    
    x=x+1;
    
    [[NSUserDefaults standardUserDefaults]setInteger:x forKey:@"good"];
    [[NSUserDefaults standardUserDefaults]synchronize];

}

-(IBAction)reportAction:(id)sender
{
    NSLog(@"bad score %ld",(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"bad"]);
    
    NSLog(@"average score %ld",(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"average"]);
    NSLog(@"good score %ld",(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"good"]);
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Report" message:[NSString stringWithFormat:@"bad:%ld \n average:%ld \n good:%ld",(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"bad"],(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"average"],(long)[[NSUserDefaults standardUserDefaults]integerForKey:@"good"]] delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    
}

-(IBAction)clearAction:(id)sender
{
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"bad"];
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"average"];
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"good"];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
