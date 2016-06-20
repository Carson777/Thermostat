//
//  ViewController.m
//  Thermostat
//
//  Created by Carson Capper on 6/16/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UISlider *slider;
@property (nonatomic,weak) IBOutlet UILabel *Label;
@property (nonatomic,weak) IBOutlet UISegmentedControl *SegmentedControl;

@end

@implementation ViewController



-(IBAction) segmentedControlIndexChanged
{
    switch (self.SegmentedControl.selectedSegmentIndex)
    {
        case 0:
             self.slider.value = ((self.slider.value*1.8)+32);
            break;
        case 1:
            self.slider.value = ((self.slider.value-32)/1.8);
            break;
        default:
            break;
    }
    NSString *sliderStringValue = [NSString stringWithFormat:@"%.0f", self.slider.value];
    self.Label.text = sliderStringValue;
}


-(IBAction) Sliderbarmoved{
    
    NSString *sliderStringValue = [NSString stringWithFormat:@"%.0f", self.slider.value];
    self.Label.text = sliderStringValue;
    
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
