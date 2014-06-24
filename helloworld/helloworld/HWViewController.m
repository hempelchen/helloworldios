//
//  HWViewController.m
//  helloworld
//
//  Created by Hempel on 14-6-24.
//  Copyright (c) 2014年 self. All rights reserved.
//

#import "HWViewController.h"
#import "HWTestViewController.h"

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)readFile:(id)sender {
    NSFileManager *fileManager = [NSFileManager defaultManager]; //创建文件管理器
    //    NSString *tempPath = NSTemporaryDirectory();    //获得临时文件夹路径
    NSString *tempPath = @"/Users/renen-inc_hempel/share/tmp/";
    NSString *tempFile = [tempPath stringByAppendingPathComponent:@"tempFile.txt"]; //获得文件全路径
    if (![fileManager fileExistsAtPath:tempFile]) {
        [fileManager createFileAtPath:tempFile contents:nil attributes:nil];  //如果文件不存在就创建一个
    }
    NSData *reader = [NSData dataWithContentsOfFile:tempFile];
    //    reader = NULL;
    NSString *str = [[NSString alloc] initWithData:reader encoding:NSUTF8StringEncoding];
    NSLog(@"the content is: %@", str);
    //    txt1.text = str;
    [showTxt setText:str];
}

- (IBAction)writeFile:(id)sender {
    NSFileManager *fileManager = [NSFileManager defaultManager]; //创建文件管理器
    NSString *tempPath = nil;    //获得临时文件夹路径
    NSString *tempFile = [tempPath stringByAppendingPathComponent:@"tempFile.txt"]; //获得文件全路径
    if (![fileManager fileExistsAtPath:tempFile]) {
        [fileManager createFileAtPath:tempFile contents:nil attributes:nil];  //如果文件不存在就创建一个
    }
    NSMutableData *writer = [[NSMutableData alloc] init];   //创建缓冲区
    [writer appendData:[@"要写入的数据CHB" dataUsingEncoding:NSUTF8StringEncoding]]; //将数据写入缓冲区
    [writer writeToFile:tempFile atomically:YES];   //将缓冲数据写入文件
    [writer release];
}

- (IBAction)showNewUI:(id)sender {
    HWTestViewController *testViewController = [[HWTestViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    [self presentViewController:testViewController animated:YES completion:nil];
    [testViewController release];
//    HWNaviController *naviController = [[HWNaviController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
//    [self presentViewController:naviController animated:YES completion:nil];
//    [self.view setFrame:CGRectMake(0,0,320,480)];
//    [naviController release];
}
@end
