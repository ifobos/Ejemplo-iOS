//
//  videoViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface videoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *contenedor;
@property (nonatomic, strong) MPMoviePlayerController* reproductor;

@end
