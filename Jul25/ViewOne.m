//
//  ViewOne.m
//  Jul25
//
//  Created by Udo Hoppenworth on 7/25/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "ViewOne.h"

@implementation ViewOne

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        CGRect bounds = self.bounds;
        CGPoint center = CGPointMake(bounds.origin.x + bounds.size.width/2, bounds.origin.y + bounds.size.height/2);
        
        self.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.1 alpha:1.0];
        
        // draw button
        CGRect frame = CGRectMake(center.x - 75, center.y - 22, 150, 44);
        
        self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.myButton setFrame:frame];
        [self.myButton setTitle:@"Say Hello" forState:UIControlStateNormal];
        
        [self addSubview:self.myButton];
        
        // draw label
        
        self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
        center.y += 50;
        self.myLabel.center = center;
        self.myLabel.text = @"Hello";
        self.myLabel.backgroundColor = [UIColor clearColor];
        self.myLabel.textAlignment = NSTextAlignmentCenter;
        self.myLabel.hidden = YES;
        
        [self addSubview:self.myLabel];
        
        self.orientationLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 200, 20)];
        self.orientationLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:self.orientationLabel];
        
        
        // text field
        UIFont *font = [UIFont systemFontOfSize: 24];
		CGFloat height = [@"A" sizeWithFont: font].height;
        
		CGRect f = CGRectMake(0,0,250,height);
        
        self.myTextField = [[UITextField alloc] initWithFrame:f];
        self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
		self.myTextField.backgroundColor = [UIColor yellowColor];
		self.myTextField.textColor = [UIColor blackColor];
        self.myTextField.clearButtonMode = UITextFieldViewModeAlways;
		self.myTextField.keyboardType = UIKeyboardTypeDefault;
		self.myTextField.returnKeyType = UIReturnKeyDone;
        
        self.myTextField.delegate = self;
        
        [self addSubview: self.myTextField];
        
    }
    return self;
}

- (void)buttonClicked
{
    if (self.myLabel.hidden) {
        NSString *returnString;
        if (![self.myTextField.text length] == 0) {
            returnString = [NSString stringWithFormat:@"Hello, %@!", self.myTextField.text];
        } else {
            returnString = @"Hello!";
        }
        self.myLabel.text = returnString;
        [self.myButton setTitle:@"Hide Hello" forState:UIControlStateNormal];
        self.myLabel.hidden = NO;
        
    } else {
        self.myLabel.text = @"";
        [self.myButton setTitle:@"Say Hello" forState:UIControlStateNormal];
        self.myLabel.hidden = YES;
    }
    [self.myTextField resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.myTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
