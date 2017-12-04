//
//  SecondViewController.m
//  ZiboMa
//
//  Created by macbook on 2017/12/4.
//  Copyright © 2017年 university of leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.planeinformation.length ) {
        self.PlaneModel.text = [NSString stringWithFormat:@"Model：%@",self.planeinformation];
        [self.image setImage:[UIImage imageNamed:self.planeinformation]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
