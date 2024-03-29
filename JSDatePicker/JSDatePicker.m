//
//  JSDatePicker.m
//  智慧社区
//
//  Created by gallon on 2019/8/28.
//  Copyright © 2017年 zhsq. All rights reserved.
//
#define  VIEW_HEIGHT   220.0f

#import "JSDatePicker.h"

@implementation JSDatePicker

+ (instancetype)datePicker {
    return [[[self class] alloc] initWithFrame:CGRectMake(0, 0, 0, VIEW_HEIGHT)];
}


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.datePickerMode = UIDatePickerModeDate;
        self.minimumDate = [self formatterFromString:@"1900-01-01"];
        self.maximumDate = [self formatterFromString:@"2099-01-01"];
        self.currentDate = [self formatterFromDate:self.date];
        [self addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}


- (void)dateChanged:(JSDatePicker *)picker {
    self.currentDate = [self formatterFromDate:self.date];
}


- (NSDate *)formatterFromString:(NSString *)dateStr {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    return [formatter dateFromString:dateStr];
}


- (NSString *)formatterFromDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    return [formatter stringFromDate:date];
}


@end
