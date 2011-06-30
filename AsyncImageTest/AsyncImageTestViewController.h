//
//  AsyncImageTestViewController.h
//  AsyncImageTest
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/11.


#import <UIKit/UIKit.h>
#import "AsynchronousUIImage.h"

@interface AsyncImageTestViewController : UIViewController <AsynchronousUIImageDelegate>{
    
    IBOutlet UIImageView *img1;
    IBOutlet UIImageView *img2;
    IBOutlet UIImageView *img3;
    IBOutlet UIImageView *img4;
}

@end
