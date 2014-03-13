//
//  ViewController.h
//  Calculator
//
//  Created by AntiFun on 13/03/2014.
//  Copyright (c) 2014 Think In Pixels. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *_screen;
    
    int _method;
    int _selectNumber;
    float _runningTotal;
}

-(IBAction)numberPress:(id)sender;

-(IBAction)functionPress:(id)sender;

@end
