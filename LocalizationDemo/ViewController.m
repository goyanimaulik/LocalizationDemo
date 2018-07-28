//
//  ViewController.m
//  LocalizationDemo
//
//  Created by maulik on 12/06/18.
//  Copyright © 2018 ligro. All rights reserved.
//

#import "ViewController.h"
#import "LocalizeHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LocalizationSetLanguage(@"fr");
    
    [self setMultiLang:self.view];
    
    NSString *localizedHelloString = LocalizedString(@"maulik");
    NSLog(@"%@", localizedHelloString);
    
}

-(void)setMultiLang:(UIView*)screen
{
    for(UILabel *label in screen.subviews)
    {
        if([label isKindOfClass:[UILabel class]])
        {
            label.text = LocalizedString(label.text);
        }
        else if([label isKindOfClass:[UIView class]])
        {
            [self setMultiLang:label];
        }
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}


@end
