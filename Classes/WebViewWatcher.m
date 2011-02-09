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

- (NSDictionary*) parseQueryString:(NSURL *)url{
	NSArray *parameters = [[url query] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"=&"]];
	NSMutableDictionary *keyValueParm = [NSMutableDictionary dictionary];
	
	for (int i = 0; i < [parameters count]; i=i+2) {
		[keyValueParm setObject:[parameters objectAtIndex:i+1] forKey:[parameters objectAtIndex:i]];
	}
	
	return keyValueParm;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
	
	
	
	// Only allow the initial load
	if( initLoaded )
	{
		NSString* path = request.URL.path;
		
		NSRange episodeRange = [path rangeOfString:@"episode.html"];
		if( episodeRange.location != NSNotFound )
		{
			
			NSArray *parameters = [[request.URL query] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"=&"]];
			NSMutableDictionary *keyValueParm = [NSMutableDictionary dictionary];
			
			for (int i = 0; i < [parameters count]; i=i+2) {
				[keyValueParm setObject:[parameters objectAtIndex:i+1] forKey:[parameters objectAtIndex:i]];
			}
			
		
						
			NSString* idString = [keyValueParm objectForKey:@"eid"];
			
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
