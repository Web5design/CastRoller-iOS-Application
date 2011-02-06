//
//  FirstViewController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-04.
//  Copyright 2011 CastRoller. All rights reserved.
//

#define BASEURL [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]

#import "FirstViewController.h"


@implementation FirstViewController


@synthesize myWebView;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
/*	NSString *urlString = [[NSString alloc] initWithFormat:@"http://dev.castroller.com", nil];
	
	

	//Create a URL object.
	NSURL *url = [NSURL URLWithString:urlString];
	
	//URL Requst Object
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Load the request in the UIWebView.
	[myWebView loadRequest:requestObj];
*/
	

	NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
	
	NSURL *url = [NSURL fileURLWithPath:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	[myWebView loadRequest:requestObj];

	
    [super viewDidLoad];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[myWebView dealloc];
    [super dealloc];
}

@end
