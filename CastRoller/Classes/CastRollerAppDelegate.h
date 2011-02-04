//
//  CastRollerAppDelegate.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-04.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CastRollerAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
