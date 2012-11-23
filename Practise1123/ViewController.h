//
//  ViewController.h
//  Practise1123
//
//  Created by liuwei on 12-11-23.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate,UIAlertViewDelegate>

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) IBOutlet UISwitch *switch1;
@property (nonatomic, retain) IBOutlet UISwitch *switch2;


-(IBAction) sliderMoved:(id)sender;
-(IBAction) segmentChoosed:(id)sender;
-(IBAction) swithToggled:(id)sender;
-(IBAction) openSheet:(id)sender;

@end
