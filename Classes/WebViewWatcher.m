//
//  WebViewWatcher.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "WebViewWatcher.h"


@implementation WebViewWatcher
-(WebViewWatcher*) initWithNavController:(UINavigationController *)controller{
	self = [super init];
	navController = controller;
	
	
	initLoaded = NO;
	
	return self;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
	NSString* path = request.URL.path;
	
	// Only allow the initial load
	if( initLoaded )
	{
		return NO;
	}else{
		return YES;
	}
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
	initLoaded = YES;
}


@end
