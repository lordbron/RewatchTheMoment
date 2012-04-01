//
//  RTMRecordViewController.h
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/29/12.
//  Copyright (c) 2012 Omega Ortega / Area 161. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RTMRecordViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker;

@end
