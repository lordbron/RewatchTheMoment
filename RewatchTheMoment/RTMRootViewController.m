//
//  RTMRootViewController.m
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/27/12.
//  Copyright (c) 2012 Omega Ortega / Area 161. All rights reserved.
//

#import "RTMRootViewController.h"
#import <CoreFoundation/CoreFoundation.h>


@interface RTMRootViewController ()
@end

@implementation RTMRootViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)recordButtonPressed:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) 
    {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        
        // Set source to the camera
        imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
        
        // Delegate is self
        imagePicker.delegate = self;
        
        // Allow editing of image ?
        imagePicker.allowsEditing = YES;
        
        NSArray *availMediaTypes = [NSArray arrayWithObjects:(NSString*)kUTTypeMovie, nil];
        
        imagePicker.mediaTypes = availMediaTypes;
        
        imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
        
        imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
        
        [self presentModalViewController:imagePicker animated:YES];
    }
}

- (IBAction)shareButtonPressed:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) 
    {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        
        // Set source to the camera
        imagePicker.sourceType =  UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        
        // Delegate is self
        imagePicker.delegate = self;
        
        // Allow editing of image ?
        imagePicker.allowsEditing = YES;
        
        NSArray *availMediaTypes = [NSArray arrayWithObjects:(NSString*)kUTTypeMovie, nil];
        
        imagePicker.mediaTypes = availMediaTypes;
        
        imagePicker.videoQuality = UIImagePickerControllerQualityTypeLow;
        
        [self presentModalViewController:imagePicker animated:YES];
    }
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    /*
     Capture:
     UIImagePickerControllerMediaType = "public.movie";
     UIImagePickerControllerMediaURL = "file://localhost/private/var/mobile/Applications/F3E347F6-4FA0-4C4C-A8EE-ED0C11A530A6/tmp/capture-T0x1dd5e300.tmp.T3xG8U/capturedvideo.MOV";
     
     Library:
     UIImagePickerControllerMediaType = "public.movie";
     UIImagePickerControllerMediaURL = "file://localhost/private/var/mobile/Applications/F3E347F6-4FA0-4C4C-A8EE-ED0C11A530A6/tmp//trim.s4SRTX.MOV";
     UIImagePickerControllerReferenceURL = "assets-library://asset/asset.MOV?id=6F6BA2A9-EAFF-4928-A56C-15FB6DA6D722&ext=MOV";
     */
    
    if ([info objectForKey:@"UIImagePickerControllerReferenceURL"]) {
        
    } else {
        NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
        
        // Handle a movie capture and save it
        if (CFStringCompare ((__bridge CFStringRef) mediaType, kUTTypeMovie, 0)
            == kCFCompareEqualTo) {
            
            NSString *moviePath = [[info objectForKey:
                                    UIImagePickerControllerMediaURL] path];
            
            if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum (moviePath)) {
                UISaveVideoAtPathToSavedPhotosAlbum (
                                                     moviePath, nil, nil, nil);
            }
        }
    }
    
    [picker dismissModalViewControllerAnimated:YES];
}
@end
