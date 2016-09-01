//
//  ViewController.m
//  calculator-daeun
//
//  Created by iOS on 2016. 8. 31..
//  Copyright (c) 2016년 iOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize outputNumber;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self defaultNumber];
    int a = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)defaultNumber
{
    [outputNumber setText:@"0"];
    
    firstOperand = YES;
    resultValue = 0;
    temp = 0;
    currentValue = 0;
    func = fail;
}

- (void)displayNumber:(double)num
{
    NSString *displayString = nil;
    
    displayString = [NSString stringWithFormat:@"%.0lf", num];
    
    [outputNumber setText:displayString];
    
}

- (void) result{
    switch (func) {
        case add:
        {
            resultValue += temp;
            break;
        }
            
        case minus:
        {
            resultValue -= temp;
            break;
        }
            
        case multi:
        {
            resultValue *= temp;
            break;
        }
            
        case divide:
        {
            resultValue /= temp;
            break;
        }
            
        case fail:
        {
            resultValue = [[outputNumber text] doubleValue];
            break;
        }
            
        default:
            break;
    }
    
    [self displayNumber:resultValue];
    
    currentValue = 0;

}
- (IBAction)ClickNumber:(id)sender {
    
    NSInteger inputNumber = [sender tag];
    
    currentValue = (currentValue * 10) + (int)inputNumber;
    
    firstOperand = YES;
    
    [self displayNumber:currentValue];
    
}


- (IBAction)functionButton:(id)sender {
    
    switch ([sender tag]) {
        case clr:
        {
            [self defaultNumber];
            break;
        }
            
        case equl:
        {
            if(firstOperand == YES)
            {
                temp = [[outputNumber text] doubleValue];
                firstOperand = NO;
            }
            
            [self result];
            break;
        }
            
        case add:
        case minus:
        case multi:
        case divide:
        {
            resultValue = [[outputNumber text] doubleValue];
            currentValue = 0;
            func = (functionTag)[sender tag];
            break;
        }
            
        default:
            break;
    }

}
@end
