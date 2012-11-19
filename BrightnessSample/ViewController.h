//
//  ViewController.h
//  BrightnessSample
//
//  Created by kkato on 2012/11/19.
//  Copyright (c) 2012年 CrossBridge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *brightnessTextView;
- (IBAction)handleDownButton:(id)sender;
- (IBAction)handleUpButton:(id)sender;

@end
