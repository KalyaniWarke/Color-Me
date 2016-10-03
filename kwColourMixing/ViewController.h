//
//  ViewController.h
//  kwColourMixing
//
//  Created by Kalyani on 13/09/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//
#define kAllUIElementHeight 40.0
#define kHorizentalPadding 20.0
#define kVerticalPadding 20.0
#define kAllUIElementWidth 80.0
#define kallUISliderWidth 250.0

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
UILabel *blueLabel;
    UILabel *greenLabel;
    UILabel *redLabel;
    UISlider *blueSlider;
    UISlider *greenSlider;

    UISlider *redSlider;
    CGFloat screenWidth;
    CGFloat screenHeight;
    
}
@end

