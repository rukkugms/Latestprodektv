//
//  eqmnt.h
//  Newproject
//
//  Created by GMSIndia1 on 12/31/13.
//  Copyright (c) 2013 GMSIndia1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface eqmnt : NSObject

@property(readwrite)NSInteger entryid;
@property(strong,nonatomic)NSString*itemcode;
@property(strong,nonatomic)NSString*itemdescptn;
@property(strong,nonatomic)NSString*subtype;
@property(strong,nonatomic)NSString*PurchaseValue;
@property(strong,nonatomic)NSString*SerialNo;

@property(strong,nonatomic)NSString*ManufacturedYear;
@property(strong,nonatomic)NSString*PictureLocation;
@property(strong,nonatomic)NSString*InsuredValue;
@property(strong,nonatomic)NSString*HoursUsed;
@property(strong,nonatomic)NSString*FuelConsumptionPerHour;
@property(strong,nonatomic)NSString*Condition;
@property(strong,nonatomic)NSString*HourlyRate;
@property(strong,nonatomic)NSString*DailyRate;
@property(strong,nonatomic)NSString*ShiftwiseRate;
@property(strong,nonatomic)NSString*WeeklyRate;
@property(strong,nonatomic)NSString*MonthlyRate;
@property(strong,nonatomic)NSString*YearlyRate;
@property(readwrite)NSInteger overhead;
@end
