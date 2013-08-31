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

@property (strong, nonatomic) IBOutlet UISlider *rightSlider;
@property (strong, nonatomic) IBOutlet UISlider *leftSlider;


@end

@implementation DRViewController

@synthesize rightMotorValue = _rightMotorValue;
@synthesize leftMotorValue = _leftMotorValue;

@synthesize rightSlider = _rightSlider;
@synthesize leftSlider = _leftSlider;

int rightMotor;
int leftMotor;

- (IBAction)rightSliderMoved:(UISlider *)sender {
    rightMotor = sender.value;
    self.rightMotorValue.text = [NSString stringWithFormat:@"%i", rightMotor];
    if (!sender.tracking) {
        self.rightSlider.value = 0;
        rightMotor = 0;
        self.rightMotorValue.text = [NSString stringWithFormat:@"%i", rightMotor];
    }
}

- (IBAction)leftSliderMoved:(UISlider *)sender {
    leftMotor = sender.value;
    self.leftMotorValue.text = [NSString stringWithFormat:@"%i", leftMotor];
    if (!sender.tracking) {
        self.leftSlider.value = 0;
        leftMotor = 0;
        self.leftMotorValue.text = [NSString stringWithFormat:@"%i", leftMotor];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.rightMotorValue.text = [NSString stringWithFormat:@"%i", rightMotor];
    self.leftMotorValue.text = [NSString stringWithFormat:@"%i", leftMotor];
	self.rightSlider.transform=CGAffineTransformRotate(self.rightSlider.transform,270.0/180*M_PI);
    self.leftSlider.transform=CGAffineTransformRotate(self.leftSlider.transform,270.0/180*M_PI);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
