//
//  AsynchronousImageView.h
//  WallApp
//
//  Created by sebastiao Gazolla Costa Junior on 10/06/11.
//  Copyright 2011 iPhone and Java developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class AsynchronousUIImage;

@protocol AsynchronousUIImageDelegate <NSObject>
@optional
-(void) imageDidLoad:(AsynchronousUIImage *)anImage;

@end



@interface AsynchronousUIImage : UIImage
{
    NSURLConnection *connection;
    NSMutableData *data;
   
}
@property (nonatomic, assign) id <AsynchronousUIImageDelegate> delegate;
@property (nonatomic)  int tag;
- (void)loadImageFromURL:(NSString *)anUrl;

@end