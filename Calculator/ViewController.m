//
//  ViewController.m
//  Calculator
//
//  Created by AntiFun on 13/03/2014.
//  Copyright (c) 2014 Think In Pixels. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)numberPress:(id)sender
{
    UIButton *button = (UIButton*)sender;
    _selectNumber = _selectNumber * 10;
    _selectNumber = _selectNumber + button.tag;
    _screen.text = [NSString stringWithFormat:@"%i", _selectNumber];
}

-(IBAction)functionPress:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button.tag == 6) {
        [self allClear];
    } else {
        [self calculate];
        _method = button.tag;
        _selectNumber = 0;
        if (button.tag == 0) _screen.text = [NSString stringWithFormat:@"%.2f", _runningTotal];
    }
}

-(void)allClear
{
    _method = 0;
    _selectNumber = 0;
    _runningTotal = 0;
    _screen.text = [NSString stringWithFormat:@"0"];
}

-(void)calculate
{
    if (_runningTotal == 0)
    {
        _runningTotal = _selectNumber;
    }
    else
    {
        switch (_method) {
            case 1:
                _runningTotal = _runningTotal / _selectNumber;
                break;
            case 2:
                _runningTotal = _runningTotal * _selectNumber;
                break;
            case 3:
                _runningTotal = _runningTotal - _selectNumber;
                break;
            case 4:
                _runningTotal = _runningTotal + _selectNumber;
                break;
            default:
                break;
        }
    }
}

@end
