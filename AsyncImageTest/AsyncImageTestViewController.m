//
//  AsyncImageTestViewController.m
//  AsyncImageTest
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/11.


#import "AsyncImageTestViewController.h"


@implementation AsyncImageTestViewController

- (void)dealloc
{
    [img1 release];
    [img2 release];
    [img3 release];
    [img4 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    AsynchronousUIImage *image = [[AsynchronousUIImage alloc] init];
    [image loadImageFromURL: @"http://fc06.deviantart.net/fs42/f/2009/073/e/d/Free_red_panda_icon_100x100_by_SuperTuffPinkPuff.png" ];
    image.tag = 1;
    image.delegate = self;
    [image release];
    
    image = [[AsynchronousUIImage alloc] init];
    [image loadImageFromURL: @"http://fc06.deviantart.net/fs44/f/2009/073/0/b/Free_fennec_fox_icon_100x100_by_SuperTuffPinkPuff.png" ];
    image.tag = 2;
    image.delegate = self;
    [image release];
   
    image = [[AsynchronousUIImage alloc] init];
    [image loadImageFromURL: @"http://fc03.deviantart.net/fs43/f/2009/072/7/8/Free_red_fox_icon_100x100_by_SuperTuffPinkPuff.png" ];
    image.tag = 3;
    image.delegate = self;
    [image release];
   
    image = [[AsynchronousUIImage alloc] init];
    [image loadImageFromURL: @"http://fc04.deviantart.net/fs48/f/2009/177/1/3/Free_red_panda_icon_100x100_2_by_SuperTuffPinkPuff.png" ];
    image.tag = 4;
    image.delegate = self;
    [image release];
    
    [super viewDidLoad];
}

-(void) imageDidLoad:(AsynchronousUIImage *)anImage{
    if (anImage.tag == 1) {
        img1.image = anImage;
    }
    if (anImage.tag == 2) {
        img2.image = anImage;
    }
    if (anImage.tag == 3) {
        img3.image = anImage;
    }
    if (anImage.tag == 4) {
        img4.image = anImage;
    }
    
}

- (void)viewDidUnload
{
    [img1 release];
    img1 = nil;
    [img2 release];
    img2 = nil;
    [img3 release];
    img3 = nil;
    [img4 release];
    img4 = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
