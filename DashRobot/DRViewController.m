//
//  DRViewController.m
//  DashRobot
//
//  Created by Antoine Balaresque on 8/20/13.
//  Copyright (c) 2013 Antoine Balaresque. All rights reserved.
//

#import "DRViewController.h"

@interface DRViewController ()

@property (strong, nonatomic) IBOutlet UITextField *rightMotorValue;
@property (strong, nonatomic) IBOutlet UITextField *leftMotorValue;


@end

@implementation DRViewController

@synthesize rightMotorValue = _rightMotorValue;
@synthesize leftMotorValue = _leftMotorValue;
int rightMotor;
int leftMotor;

- (IBAction)rightSliderMoved:(UISlider *)sender {
    rightMotor = sender.value;
    self.rightMotorValue.text = [NSString stringWithFormat:@"%i", rightMotor];
}
- (IBAction)leftSliderMoved:(UISlider *)sender {
    leftMotor = sender.value;
    self.leftMotorValue.text = [NSString stringWithFormat:@"%i", leftMotor];
}

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

- (IBAction)rightMotor:(UISlider *)sender {
}
@end
