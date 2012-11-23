//
//  ViewController.m
//  Practise1123
//
//  Created by liuwei on 12-11-23.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect switch2Frame = self.switch1.frame;
    switch2Frame.origin.x += 150;
    
    UISwitch *switch2 = [[UISwitch alloc] initWithFrame:switch2Frame];
    [switch2 addTarget:self action:@selector(swithToggled:) forControlEvents:UIControlEventTouchUpInside];
    self.switch2 = switch2;
    [self.view addSubview:self.switch2];
    [switch2 release];
    
    NSLog(@"x:%f, y:%f", self.switch1.frame.origin.x, self.switch1.frame.origin.y);
    NSLog(@"x:%f, y:%f", switch2.frame.origin.x, switch2.frame.origin.y);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - slide
-(IBAction) sliderMoved:(id)sender
{
    UISlider *slider = (UISlider *) sender;
    int value = (int)slider.value;
    self.label.text = [NSString stringWithFormat:@"%d", value];
}

#pragma mark - segment
- (void)segmentChoosed:(id) sender
{
    UISegmentedControl *segment = (UISegmentedControl *)sender;
    if (segment.selectedSegmentIndex == 0) {
        self.switch1.hidden = NO;
        self.switch2.hidden = NO;
        self.button.hidden = YES;
    }
    else
    {
        self.switch1.hidden = YES;
        self.switch2.hidden = YES;
        self.button.hidden = NO;
    }
}

#pragma mark - switch
- (IBAction) swithToggled:(id)sender
{
    UISwitch *switchObj = (UISwitch *)sender;
    BOOL setting = switchObj.on;
    
    [self.switch1 setOn:setting animated:YES];
    [self.switch2 setOn:setting animated:YES];
}

#pragma mark - sheet
- (void)openSheet:(id)sender
{
    UIActionSheet *aSheet1 = [[UIActionSheet alloc] initWithTitle:@"我要分享" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"放弃" otherButtonTitles:@"新浪微博", @"腾讯微博", nil];
    
    [aSheet1 showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
        UIAlertView *aView = [[UIAlertView alloc] initWithTitle:@"点中啦" message:@"11" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles: nil];
        
        [aView show];
}

- (void) dealloc
{
    [_switch1 release];
    _switch1 = nil;
    
    [_switch2 release];
    _switch2 = nil;
    
    [super dealloc];
}

@end
