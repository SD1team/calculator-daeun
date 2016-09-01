//
//  ViewController.h
//  calculator-daeun
//
//  Created by iOS on 2016. 8. 31..
//  Copyright (c) 2016년 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    add = 100,
    minus,
    multi,
    divide,
    equl,
    clr,
    fail
}functionTag;


@interface ViewController : UIViewController
{
    int resultValue, currentValue, temp;
    
    functionTag func;
    BOOL firstOperand;
}

@property (strong, nonatomic) IBOutlet UILabel *outputNumber;

- (IBAction)ClickNumber:(id)sender;

- (IBAction)functionButton:(id)sender;

@end

