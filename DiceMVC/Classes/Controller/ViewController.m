//
//  ViewController.m
//  DiceMVC
//
//  Created by Jakub Truhlar on 18.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "ViewController.h"
#import "NumberGenerator.h"
#import "RolledLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    
    _diceLabel.text =  [NSString stringWithFormat:@"%d sided DICE", (int)sender.value];
}

- (IBAction)rollBtnPressed:(id)sender {
    
    NumberGenerator *numberGenerator = [NumberGenerator new];
    int rolledNumber = [numberGenerator generateNumber:_diceSlider.value];
    
    [_rolledLabel showRolledNumber:rolledNumber sides:_diceSlider.value];
}

@end
