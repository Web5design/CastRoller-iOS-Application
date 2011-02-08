//
//  WebViewWatcher.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "WebViewWatcher.h"
#import "EpisodeViewController.h"

@implementation WebViewWatcher


-(WebViewWatcher*) initWithNavController:(UINavigationController *)controller{
	self = [super init];
	navController = controller;
	
	
	initLoaded = NO;
	
	return self;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
	
	
	
	// Only allow the initial load
	if( initLoaded )
	{
		NSString* path = request.URL.path;
		
		NSRange episodeRange = [path rangeOfString:@"episode.html?eid="];
		if( episodeRange.location != NSNotFound )
		{
			// loading an episode page
			NSUInteger idStart = episodeRange.location + episodeRange.length;
			
			NSString *idString = [path substringFromIndex:idStart];
			
			NSInteger id = [idString intValue];
			
			EpisodeViewController *controller = [[EpisodeViewController alloc] initWithNibName:@"EpisodeView" bundle:nil];
			controller.episodeId = id;
			
			[navController pushViewController:controller animated:YES];
			
		}
		
		return NO;
	}else{
		return YES;
	}
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
	initLoaded = YES;
}


@end
