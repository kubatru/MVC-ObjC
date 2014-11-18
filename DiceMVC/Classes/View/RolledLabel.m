//
//  RolledLabel.m
//  DiceMVC
//
//  Created by Jakub Truhlar on 18.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "RolledLabel.h"
#import "ViewController.h"

@implementation RolledLabel

- (void)showRolledNumber:(int)rolledValue sides:(int)sides {
    
    // Animation
    [UIView animateWithDuration:0.1
                     animations:^{
                         
                         self.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height + 50);
                     
                     }
                     completion:^(BOOL finished) {
                         
                         [self secondPartOfAnimation];
                         self.text = [NSString stringWithFormat:@"%d", rolledValue];
                         
                         // If you rolled max value
                         if (rolledValue == sides) {
                             [self setTextColor:[UIColor greenColor]];
                         }
                         
                         else {
                             [self setTextColor:[UIColor blackColor]];
                         }
                     }];
}

- (void)secondPartOfAnimation {
    
    self.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, -50);
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         
                         self.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height/2);                 
    }];
}

@end
