//
//  RolledLabel.h
//  DiceMVC
//
//  Created by Jakub Truhlar on 18.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RolledLabel : UILabel

- (void)showRolledNumber:(int)rolledValue sides:(int)sides;

@end
