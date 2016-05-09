//
//  SCViewController.h
//  SquareCalculator
//
//  Created by Kapam6a on 07.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

- (IBAction)calculateAction:(id)sender;
- (IBAction)resetAction:(id)sender;

@end

