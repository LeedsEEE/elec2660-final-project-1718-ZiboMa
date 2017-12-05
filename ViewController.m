//
//  ViewController.m
//  ZiboMa
//
//  Created by macbook on 2017/11/23.
//  Copyright © 2017年 university of leeds. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView; //outlet of pickview
@property (weak, nonatomic) IBOutlet UIButton *select;  //outlet of button
@property (strong, nonatomic)NSArray*datas;
@property (strong, nonatomic)NSString *plane1;
@property (strong, nonatomic)NSArray*number;
@property (strong, nonatomic)NSString *number1;
@end

@implementation ViewController

- (void)selectAction{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondViewController *SVC =[storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    SVC.plane2 =  self.plane1 ;
    SVC.number1=self.number1;
    [self.navigationController pushViewController:SVC animated:YES];
    //prepare to push information from viewcontroller to the second view controller
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    [self.select addTarget:self action:@selector(selectAction) forControlEvents:UIControlEventTouchUpInside];
    //push information from viewcontroller to the second view controller
    
    self.datas = @[@"Boeing747",@"B-247",@"DC-1",@"DC-3",@"A380"]; //the models of plane
    self.number = @[@"300",@"420",@"278",@"340",@"380"]; //the number of passengers of different planes
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;  //number of components
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.datas.count; //number of rows in component
}
#pragma mark UIPickerViewDelegate
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.datas[row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.plane1 = self.datas[row];
    self.number1=self.number[row];
}



@end




