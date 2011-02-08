//
//  FirstViewController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-04.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	UIWebView *myWebView;
	UIWebView *channelsWebView;
	
}

@property (nonatomic, retain) IBOutlet UIWebView *myWebView;
@property (nonatomic, retain) IBOutlet UIWebView *channelsWebView;


@end
