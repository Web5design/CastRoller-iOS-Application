//
//  FirstViewController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-04.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewWatcher.h"

@interface FirstViewController : UIViewController {
	UIWebView *myWebView;
	UIWebView *channelsWebView;
	WebViewWatcher *watcher;
	
	
}

@property (nonatomic, retain) IBOutlet UIWebView *myWebView;
@property (nonatomic, retain) IBOutlet UIWebView *channelsWebView;
- (IBAction)featuredButtonPressed:(id)sender;



- (void)openBottomPage:(NSString*) url;


@end
