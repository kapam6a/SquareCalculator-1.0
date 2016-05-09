//
//  SCNumberTextFiled.m
//  SquareCalculator
//
//  Created by Kapam6a on 08.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "SCNumberTextFiled.h"

@implementation SCNumberTextFiled

- (void)drawRect:(CGRect)rect
{
    self.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.layer.borderWidth= 1.0f;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(paste:))
        return NO;
    if (action == @selector(copy:))
        return NO;
    return [super canPerformAction:action withSender:sender];
}

@end
