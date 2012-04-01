//
//  RTMRecordViewController.m
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/29/12.
//  Copyright (c) 2012 Omega Ortega / Area 161. All rights reserved.
//

#import "RTMRecordViewController.h"
#import <MobileCoreServices/UTCoreTypes.h>

@interface RTMRecordViewController ()

@end

@implementation RTMRecordViewController

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

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
}
@end
