//
//  JSDatePicker.h
//  智慧社区
//
//  Created by gallon on 2019/8/28.
//  Copyright © 2017年 zhsq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSDatePicker : UIDatePicker
@property (nonatomic, strong) NSString *currentDate;
/**构建日期选择器*/
+ (instancetype)datePicker;
@end
