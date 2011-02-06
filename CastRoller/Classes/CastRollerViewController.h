//
//  CastRollerViewController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-05.
//  Copyright 2011 CastRoller. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface CastRollerViewController : UIViewController {
	UIWebView *myWebView;
	UILabel *myLabel;
}

@property (nonatomic, retain) IBOutlet UIWebView *myWebView;

@property (nonatomic, retain) IBOutlet UILabel *myLabel;

@end

