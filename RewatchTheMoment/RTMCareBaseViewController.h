//
//  RTMCareBaseViewController.h
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/28/12.
//  Copyright (c) 2012 Omega Ortega / Area 161. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RTMCareBaseViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *homeButtonBarItem;
@property (strong, nonatomic) IBOutlet UINavigationItem *baseNav;

- (IBAction)returnToHome:(id)sender;

@end
