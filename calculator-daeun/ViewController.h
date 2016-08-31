//
//  ViewController.h
//  calculator-daeun
//
//  Created by iOS on 2016. 8. 31..
//  Copyright (c) 2016년 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

enum functionTag
{
    add = 100,
    minus,
    multi,
    divide,
    equl,
    clr,
    fail
};


@interface ViewController : UIViewController
{
    int resultValue, currentValue, temp;
    
    enum functionTag func;
}

@property (strong, nonatomic) IBOutlet UILabel *outputNumber;

- (IBAction)ClickNumber:(id)sender;

- (IBAction)functionButton:(id)sender;

@end

