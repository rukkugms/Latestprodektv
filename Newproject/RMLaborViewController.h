//
//  RMLaborViewController.h
//  Newproject
//
//  Created by GMSIndia 2 on 06/01/15.
//  Copyright (c) 2015 GMSIndia1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CKCalendarView.h"

@interface RMLaborViewController : UIViewController
{
    NSInteger calendertype;
}

@property(strong,nonatomic)CKCalendarView *calender;
@property(nonatomic, strong) NSDateFormatter *dateFormatter;

//IBActions
- (IBAction)clsebtn:(id)sender;
- (IBAction)SelectJobs:(id)sender;
- (IBAction)SelectStartdate:(id)sender;
- (IBAction)SelectEnddate:(id)sender;

//IBOutlets
@property (strong, nonatomic) IBOutlet UIButton *jobbtn;
@property (strong, nonatomic) IBOutlet UIButton *startdatebtn;
@property (strong, nonatomic) IBOutlet UIButton *enddatebtn;

@property(strong,nonatomic)IBOutlet UITableView *popovertableview;
@property(strong,nonatomic)UIPopoverController *popovercontroller;

@end
