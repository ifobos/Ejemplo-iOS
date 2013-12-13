//
//  audioViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 10/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface audioViewController : UIViewController
@property (nonatomic,strong) AVAudioPlayer* reproductor;
@property (weak, nonatomic) IBOutlet UILabel* etiqueta;

- (IBAction)play:(id)sender;
- (IBAction)pausa:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)cambioVolumen:(id)sender;

@end
