//
//  webViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 13/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *navegador;
 
- (IBAction)leerHTML:(id)sender;
- (IBAction)leerWEB:(id)sender;
- (IBAction)leerPDF:(id)sender;

@end
