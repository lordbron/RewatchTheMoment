//
//  RTMModelController.h
//  RewatchTheMoment
//
//  Created by Thomas Ortega II on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RTMDataViewController;

@interface RTMModelController : NSObject <UIPageViewControllerDataSource>

- (RTMDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(RTMDataViewController *)viewController;

@end
