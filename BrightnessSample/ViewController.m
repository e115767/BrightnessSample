//
//  ViewController.m
//  BrightnessSample
//
//  Created by kkato on 2012/11/19.
//  Copyright (c) 2012年 CrossBridge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)updateBrightness:(CGFloat)brightness;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  CGFloat brightness = [[UIScreen mainScreen] brightness];
  [self updateBrightness:brightness];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
  [self setBrightnessTextView:nil];
  [super viewDidUnload];
}

- (IBAction)handleDownButton:(id)sender {
  CGFloat brightness = [[UIScreen mainScreen] brightness];
  brightness -= 0.1f;
  if (brightness < 0.0f) {
    brightness = 0.0f;
  }
  
  [self updateBrightness:brightness];
}

- (IBAction)handleUpButton:(id)sender {
  CGFloat brightness = [[UIScreen mainScreen] brightness];
  brightness += 0.1f;
  if (brightness > 1.0f) {
    brightness = 1.0f;
  }
  
  [self updateBrightness:brightness];
}

- (void)updateBrightness:(CGFloat)brightness {
  [[UIScreen mainScreen] setBrightness:brightness];
  _brightnessTextView.text = [NSString stringWithFormat:@"%0.2f", brightness];
}

@end
