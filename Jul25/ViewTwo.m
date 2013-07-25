//
//  ViewTwo.m
//  Jul25
//
//  Created by Udo Hoppenworth on 7/25/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "ViewTwo.h"

@implementation ViewTwo

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        CGRect bounds = self.bounds;
        CGPoint center = CGPointMake(bounds.origin.x + bounds.size.width/2, bounds.origin.y + bounds.size.height/2);
        
        self.mySlider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 200, 16)];
        self.mySlider.center = center;
        [self sliderValueChanged:self.mySlider];
        [self addSubview:self.mySlider];
        
        self.infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 250, 40)];
        self.infoLabel.text = @"Drag slider to change background color";
        self.infoLabel.numberOfLines = 2;
        self.infoLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:self.infoLabel];
    }
    return self;
}

- (void)sliderValueChanged:(UISlider *)slider
{
    UIColor *myColor = [UIColor colorWithRed:0.9 green:slider.value blue:0.1 alpha:1.0];
    self.backgroundColor = myColor;
}

@end
