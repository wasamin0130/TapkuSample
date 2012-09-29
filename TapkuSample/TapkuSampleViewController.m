//
//  TapkuSampleViewController.m
//  TapkuSample
//
//  Created by sei on 2012/09/30.
//  Copyright (c) 2012年 wasamin0130. All rights reserved.
//

#import "TapkuSampleViewController.h"
#import <TapkuLibrary/TKCalendarMonthView.h>

@interface TapkuSampleViewController () <TKCalendarMonthViewDelegate>

@property (nonatomic, strong) TKCalendarMonthView *calendarView;
@property (nonatomic, strong) NSDate *dateSelected;

@end

@implementation TapkuSampleViewController

@synthesize calendarView = _calendarView;
@synthesize dateSelected = _dateSelected;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // カレンダービューを追加
    self.calendarView = [[TKCalendarMonthView alloc] init];
    self.calendarView.delegate = self;
    [self.view addSubview:self.calendarView];
    [self.calendarView reload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    self.calendarView = nil;
}

-(void)calendarMontView:(TKCalendarMonthView *)monthView didSelectDate:(NSDate *)date
{
    self.dateSelected = date;	
}

@end
