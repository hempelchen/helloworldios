//
//  HWViewController.h
//  helloworld
//
//  Created by Hempel on 14-6-24.
//  Copyright (c) 2014年 self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWViewController : UIViewController {
    
    IBOutlet UITextField *showTxt;

}

- (IBAction)readFile:(id)sender;
- (IBAction)writeFile:(id)sender;

@end
