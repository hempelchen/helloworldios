//
//  HWTestViewController.m
//  helloworld
//
//  Created by Hempel on 14-6-24.
//  Copyright (c) 2014年 self. All rights reserved.
//

#import "HWTestViewController.h"

@interface HWTestViewController ()

@end

@implementation HWTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.navigationItem setHidesBackButton:NO animated:YES];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:^{}];
}
@end
