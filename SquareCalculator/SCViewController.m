//
//  SCViewController.m
//  SquareCalculator
//
//  Created by Kapam6a on 07.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "SCViewController.h"

static NSString *const SCStringForResultLabel = @"результат";
static NSString *const SCStringForCounterLabel =  @"#";

@implementation SCViewController
{
    NSInteger сounter;
}

- (NSInteger)calculateSquare:(NSInteger)value
{
    return [self multiply:value with:value];
}

- (NSInteger)multiply:(NSInteger)number with:(NSInteger)anotherNumber
{
    NSInteger maxFactor = MIN(number, anotherNumber);
    NSInteger value = MAX(number, anotherNumber);
    NSInteger result = value;
    NSInteger factor = 1;
    while (factor + factor <= maxFactor) {
        result = result + result;
        factor = factor + factor;
        сounter++;
    }
    if (factor != maxFactor) {
        NSInteger remainingFactor = maxFactor - factor;
        result = result + [self multiply:remainingFactor
                                    with:value];
        сounter++;
    }
    return result;
}

- (IBAction)calculateAction:(id)sender
{
    if (![self.numberTextField.text isEqualToString:@""])
    {
        NSInteger number = [self.numberTextField.text intValue];
        if (number >= 0) {
            NSInteger squareOfNumber = [self calculateSquare:number];
            self.resultLabel.text = [NSString stringWithFormat:@"%li", (long)squareOfNumber];
            self.counterLabel.text = [NSString stringWithFormat:@"%li", (long)сounter];
            сounter = 0;
        }
    }
}

- (IBAction)resetAction:(id)sender
{
    [self resetView];
}

-(void)resetView
{
    self.resultLabel.text = SCStringForResultLabel;
    self.counterLabel.text = SCStringForCounterLabel;
    self.numberTextField.text = @"";
}

@end
