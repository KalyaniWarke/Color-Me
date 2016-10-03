//
//  ViewController.m
//  kwColourMixing
//
//  Created by Kalyani on 13/09/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    screenHeight =[[UIScreen mainScreen]bounds].size.height;
    UILabel *colorMe=[[UILabel alloc]initWithFrame:CGRectMake(4*kHorizentalPadding, 3*kVerticalPadding, 4*kAllUIElementWidth, kAllUIElementHeight)];
    [colorMe setText:@"Color Me"];
    colorMe.font=[UIFont systemFontOfSize:50];
    [self.view addSubview:colorMe];
    
    
    blueLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizentalPadding, screenHeight-3*kVerticalPadding, kAllUIElementWidth, kAllUIElementHeight)];
    //blueLabel.backgroundColor=[UIColor blueColor];
    blueLabel.textAlignment=NSTextAlignmentCenter;
    blueLabel.layer.borderColor = [UIColor blueColor].CGColor;
    blueLabel.layer.borderWidth = 3.0;
    blueLabel.shadowColor = [UIColor blueColor];
    blueLabel.shadowOffset = CGSizeMake(0, 1);
    [self.view addSubview:blueLabel];
    
    blueSlider = [[UISlider alloc]initWithFrame:CGRectMake((2*kHorizentalPadding+kAllUIElementWidth),  screenHeight-3*kVerticalPadding, kallUISliderWidth, kAllUIElementHeight)];
    
    
    [blueSlider addTarget:self action:@selector(handelBlueColor:) forControlEvents:UIControlEventValueChanged];
    blueSlider.thumbTintColor=[UIColor blueColor];
    [self.view addSubview:blueSlider];
    
    greenLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizentalPadding, screenHeight-6*kVerticalPadding, kAllUIElementWidth, kAllUIElementHeight)];
    //greenLabel.backgroundColor=[UIColor greenColor];
    greenLabel.textAlignment=NSTextAlignmentCenter;
    greenLabel.layer.borderColor = [UIColor greenColor].CGColor;
    greenLabel.layer.borderWidth = 3.0;

    [self.view addSubview:greenLabel];
    
    greenSlider = [[UISlider alloc]initWithFrame:CGRectMake((2*kHorizentalPadding+kAllUIElementWidth),  screenHeight-6*kVerticalPadding, kallUISliderWidth, kAllUIElementHeight)];
    
     [greenSlider addTarget:self action:@selector(handelGreenColor:) forControlEvents:UIControlEventValueChanged];
    greenSlider.thumbTintColor=[UIColor greenColor];

    [self.view addSubview:greenSlider];
    
    
    redLabel =[[UILabel alloc]initWithFrame:CGRectMake(kHorizentalPadding, screenHeight-9*kVerticalPadding, kAllUIElementWidth, kAllUIElementHeight)];
    //redLabel.backgroundColor=[UIColor redColor];
    redLabel.textAlignment=NSTextAlignmentCenter;
    redLabel.layer.borderColor = [UIColor redColor].CGColor;
    redLabel.layer.borderWidth = 3.0;

    [self.view addSubview:redLabel];
    
    redSlider = [[UISlider alloc]initWithFrame:CGRectMake((2*kHorizentalPadding+kAllUIElementWidth),  screenHeight-9*kVerticalPadding, kallUISliderWidth, kAllUIElementHeight)];
    
     [redSlider addTarget:self action:@selector(handelRedColor:) forControlEvents:UIControlEventValueChanged];
    redSlider.thumbTintColor=[UIColor redColor];

    [self.view addSubview:redSlider];

    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handelBlueColor:sender
{
    UISlider *localSlider = sender;
    float  colorValue;
    colorValue = localSlider.value;
    blueLabel.text =[NSString stringWithFormat:@"%0.02f",localSlider.value ];
    self.view.backgroundColor=[UIColor colorWithRed:redSlider.value green:greenSlider.value blue:localSlider.value alpha:1];
    [self colorMe];
}
-(void)handelGreenColor:sender
{
    UISlider *localSlider = sender;
    float colourValue;
    colourValue = localSlider.value;
    greenLabel.text =[NSString stringWithFormat:@"%0.02f",localSlider.value];
    self.view.backgroundColor=[UIColor colorWithRed:redSlider.value green:localSlider.value blue:blueSlider.value alpha:1];
    [self colorMe];
    
}
-(void)handelRedColor:sender
{
    UISlider *localSlider =sender;
    float colorValue;
    colorValue = localSlider.value;
    redLabel.text = [NSString stringWithFormat:@"%0.02f",localSlider.value];
    self.view.backgroundColor=[UIColor colorWithRed:localSlider.value green:greenSlider.value blue:blueSlider.value alpha:1];
    [self colorMe];
}
-(void)colorMe
{
    self.view.backgroundColor=[UIColor colorWithRed:redSlider.value green:greenSlider.value blue:blueSlider.value alpha:1];
}
@end
