//
//  NumberGenerator.m
//  DiceMVC
//
//  Created by Jakub Truhlar on 18.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "NumberGenerator.h"

@implementation NumberGenerator

- (int)generateNumber:(int)sides {
    
    int randomNumber = arc4random_uniform(sides) + 1;
    return randomNumber;
}

@end
