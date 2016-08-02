//
//  ViewController.m
//  demo
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "ViewController.h"
#import "ABCViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)actionShow:(id)sender {
    ABCViewController *vc = [ABCViewController new];
    UIPopoverPresentationController *popervc = vc.popoverPresentationController;
    popervc.sourceView = sender;
    popervc.sourceRect = sender.bounds;//CGRectMake(100, 100, 100, 100);
    vc.view.backgroundColor = [UIColor orangeColor];
    vc.modalPresentationStyle = UIModalPresentationPopover;
    [self presentViewController:vc animated:YES completion:nil];

}



@end
