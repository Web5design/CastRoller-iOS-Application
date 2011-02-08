    //
//  EpisodeViewController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-07.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "EpisodeViewController.h"


@implementation EpisodeViewController
@synthesize episodeId;
@synthesize episodeWebView;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

- (void)displayEpisode
{
	NSString *scriptString = [[NSString alloc] initWithFormat:@"displayEpisode( %d )", episodeId ];
	[episodeWebView stringByEvaluatingJavaScriptFromString:scriptString];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
	if( needDisplayEpisode )
	{
		[self displayEpisode];
	}
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	needDisplayEpisode = YES;
	
	episodeWebView.delegate = self;
	
	//Show nav bar
	self.navigationController.navigationBarHidden = NO;
	
	
	NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"episode" ofType:@"html"];
	
	NSURL *url = [NSURL fileURLWithPath:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url ];
	
	[episodeWebView loadRequest:requestObj];
	
	//[self displayEpisode];
	
    [super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated{

	[self displayEpisode];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
