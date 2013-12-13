//
//  zoomingAndScrollViewViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface zoomingAndScrollViewViewController : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;

@end
