//
//  detalleViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "item.h"
#import "repositorioItems.h"

@interface detalleViewController : UIViewController

@property(strong,nonatomic) item* item;
@property(nonatomic) NSInteger posicion;
@property (weak, nonatomic) IBOutlet UITextField *texto;
@property (weak, nonatomic) IBOutlet UISwitch *estado;


- (IBAction)eliminar:(id)sender;
@end
