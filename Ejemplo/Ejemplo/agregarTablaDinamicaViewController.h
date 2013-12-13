//
//  agregarTablaDinamicaViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "item.h"
#import "repositorioItems.h"    

@interface agregarTablaDinamicaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *texto;
@property (weak, nonatomic) IBOutlet UISwitch *estado;
- (IBAction)guardar:(id)sender;
- (IBAction)cancelar:(id)sender;

@end
