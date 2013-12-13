//
//  animacionesViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface animacionesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (strong, nonatomic) NSTimer* time;

-(void) proximaAnimacion:(NSTimer*) timer;
- (IBAction)iniciarAnimacion:(id)sender;
- (IBAction)pararAnimacion:(id)sender;
- (IBAction)cambiarFondo:(id)sender;
@end
