//
//  ADPDataController.h
//  Adipometro
//
//  Created by Tercio Esperandio on 11/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADPDataController : NSObject {
    
    
    IBOutlet NSTextField *idade ;
    IBOutlet NSTextField *peso ;
    IBOutlet NSTextField *triceps ;
    IBOutlet NSTextField *peito ;
    IBOutlet NSTextField *subaxilar ;
    IBOutlet NSTextField *subescapular ;
    IBOutlet NSTextField *abdominal ;
    IBOutlet NSTextField *suprailiaca ;
    IBOutlet NSTextField *coxa ;
    IBOutlet NSComboBox *sexo ;
    IBOutlet NSTextField *perc_gord ;
    IBOutlet NSTextField *massa_magra ;
    IBOutlet NSTextField *gord_corp ;
    
}

- (IBAction)calcular:(id)sender;

@end
