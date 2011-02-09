//
//  CollectionViewController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewWatcher.h"

@interface CollectionViewController : UIViewController {
	IBOutlet UIWebView *webView;
	WebViewWatcher *watcher;
	
}
@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
