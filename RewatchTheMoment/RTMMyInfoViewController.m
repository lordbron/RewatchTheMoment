//
//  RTMMyInfoViewController.m
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/28/12.
//  Copyright (c) 2012 Omega Ortega / Area 161. All rights reserved.
//

#import "RTMMyInfoViewController.h"

@interface RTMMyInfoViewController ()

@end

@implementation RTMMyInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)returnToHome:(id)sender
{
    [self performSegueWithIdentifier:@"myInfoToHome" sender:self];
}

@end
