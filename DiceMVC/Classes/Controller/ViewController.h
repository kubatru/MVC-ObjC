//
//  ViewController.h
//  DiceMVC
//
//  Created by Jakub Truhlar on 18.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RolledLabel.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diceLabel;
@property (weak, nonatomic) IBOutlet UISlider *diceSlider;
@property (weak, nonatomic) IBOutlet RolledLabel *rolledLabel;
@property (weak, nonatomic) IBOutlet UIButton *rollBtn;

- (IBAction)sliderValueChanged:(UISlider *)sender;
- (IBAction)rollBtnPressed:(id)sender;

@end

