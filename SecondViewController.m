//
//  SecondViewController.m
//  ZiboMa
//
//  Created by macbook on 2017/12/5.
//  Copyright © 2017年 university of leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberofpassenger; //outlet of lable3
@property (weak, nonatomic) IBOutlet UIImageView *image; //outlet of image view

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.plane2.length ) {
        self.planeModel.text = [NSString stringWithFormat:@"Model：%@",self.plane2]; //the planemodel lable display
        self.numberofpassenger.text = [NSString stringWithFormat:@"Number Of Passenger：%@",self.number1];//the numberofpassenger lable diaplay
        [self.image setImage:[UIImage imageNamed:self.plane2]]; //the imageview display
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

