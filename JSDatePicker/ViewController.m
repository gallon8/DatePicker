//
//  ViewController.m
//  JSDatePicker
//
//  Created by gallon on 2019/8/28.
//  Copyright © 2019年 gallon. All rights reserved.
//

#import "ViewController.h"
#import "JSDatePicker.h"
#import "ZHKeyBoardToolBar.h"

@interface ViewController (){
    
    UITextField*_dateTF;
}

@property (nonatomic, strong) JSDatePicker *datePicker;
@property (nonatomic, strong) ZHKeyBoardToolBar *toolbar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dateTF = [[UITextField alloc] initWithFrame:CGRectMake(30, 100, 200, 60)];
    _dateTF.borderStyle=UITextBorderStyleRoundedRect;
    _dateTF.placeholder=@"请输入日期";
    _dateTF.textAlignment = NSTextAlignmentLeft;
    _dateTF.tintColor = [UIColor clearColor];
    _dateTF.inputAccessoryView = self.toolbar;
    _dateTF.inputView = self.datePicker;
    _dateTF.font=[UIFont systemFontOfSize:16];
    [self.view addSubview:_dateTF];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)toolbar:(ZHKeyBoardToolBar *)toolbar DidClicked:(ZHKeyBoardToolBarItem)item
{
    if([_dateTF isFirstResponder]){
        _dateTF.text=self.datePicker.currentDate;
    }
    if (item == ZHKeyBoardToolBarItemDone) {
        [self.view endEditing:YES];
    }
}

//日期选择器
- (JSDatePicker *)datePicker
{
    if (!_datePicker) {
        _datePicker = [JSDatePicker datePicker];
    }
    return _datePicker;
}
- (ZHKeyBoardToolBar *)toolbar
{
    if (!_toolbar) {
        _toolbar = [ZHKeyBoardToolBar keyboardToolbar];
        _toolbar.toolbarDelegate = self;
    }
    return _toolbar;
}

@end
