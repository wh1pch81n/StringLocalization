//
//  ViewController.m
//  LocalizationIdea
//
//  Created by Derrick Ho on 11/6/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#import "ViewController.h"
#import "LocalizationIdea-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSLog(@"%@", [MainStrings HelloWorld].localizedString);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
