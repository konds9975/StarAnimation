//
//  ViewController.m
//  StarAnimation
//
//  Created by Kondya on 05/02/18.
//  Copyright © 2018 Kondya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self generateDynamicStar];
}



//MARK:-GENERATE DYAMIC STAR
-(void)generateDynamicStar
{
    [NSTimer scheduledTimerWithTimeInterval: 0.1
                                     target: self
                                   selector:@selector(onTick:)
                                   userInfo: nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval: 0.1
                                     target: self
                                   selector:@selector(onTick1:)
                                   userInfo: nil repeats:YES];
}
-(void)onTick:(NSTimer *)timer
{
    UIImageView *dot =[[UIImageView alloc] initWithFrame:CGRectMake(-10,-10,30,30)];
    dot.image=[UIImage imageNamed:@"Star"];
    [self.view addSubview:dot];
    [UIView animateWithDuration:4 delay:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        NSInteger randomX = arc4random() % ((int)self.view.frame.size.width - 30);
        NSInteger randomY = arc4random() % ((int)self.view.frame.size.height -30);
        dot.frame=CGRectMake(randomX,randomY,30,30);
    } completion:^(BOOL finished)
    {
        [dot removeFromSuperview];
    }];
}
-(void)onTick1:(NSTimer *)timer
{
    UIImageView *dot =[[UIImageView alloc] initWithFrame:CGRectMake(-10,-10,30,30)];
    dot.image=[UIImage imageNamed:@"SmilingStar"];
    [self.view addSubview:dot];
    [UIView animateWithDuration:4 delay:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        NSInteger randomX = arc4random() % ((int)self.view.frame.size.width - 30);
        NSInteger randomY = arc4random() % ((int)self.view.frame.size.height -30);
        dot.frame=CGRectMake(randomX,randomY,30,30);
    } completion:^(BOOL finished)
     {
         [dot removeFromSuperview];
     }];
}

@end
