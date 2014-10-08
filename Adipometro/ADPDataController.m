//
//  ADPDataController.m
//  Adipometro
//
//  Created by Tercio Esperandio on 11/28/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ADPDataController.h"

@implementation ADPDataController 


- (void)awakeFromNib {
    [perc_gord setTitleWithMnemonic:@""];
    [massa_magra setTitleWithMnemonic:@""];
    [gord_corp setTitleWithMnemonic:@""];
    [sexo selectItemAtIndex:0];
    
}

- (IBAction)calcular:(id)sender {
    
    float percG,dc,soma, fpeso, fpeito, fsubaxilar, fsubescapular, fabdominal, fsuprailiaca, fcoxa, ftriceps = 0.0,fidade;
    
    NSInteger gender = [sexo indexOfSelectedItem];
    fidade = [idade floatValue] ;
    fpeso = [peso floatValue];
    ftriceps = [triceps floatValue];
    fpeito = [peito floatValue];
    fsubaxilar = [subaxilar floatValue];
    fsubescapular = [subescapular floatValue];
    fabdominal = [abdominal floatValue];
    fsuprailiaca = [suprailiaca floatValue];
    fcoxa = [coxa floatValue];
    
    if (fidade <= 0 || fpeso <= 0|| ftriceps <= 0|| fpeito <= 0|| fsubaxilar <= 0 || fsubescapular <= 0|| fabdominal <= 0|| fsuprailiaca <= 0|| fcoxa <= 0) {
        NSRunAlertPanel(@"Parâmetros Incompletos !", @"Por favor confira os dados fornecidos. Você pode ter deixado algum campo em branco ou colocado valores inválidos. Por favor, utilize somente números", @"OK", nil, nil);
        return;
    }
    
    soma = ftriceps+fpeito+fsubaxilar+fsubescapular+fabdominal+fsuprailiaca+fcoxa;
    
    if (gender == 0) { //masc
        dc = 1.112-0.00043499*soma+0.00000055*(soma*soma)-0.0002886*fidade;
        NSLog(@"Masculino-----");
    } else { //fem
        dc = 1.097-0.00046971*soma+0.00000056*(soma*soma)-0.00012828*fidade;
    }
    percG = ((4.95/dc)-4.5)*100.0;
    
    
    //NSString *str1 = [NSString stringWithFormat:@"%.6f",dc];
    
    NSString *str2 = [NSString stringWithFormat:@"%.2f %%",percG];
    [perc_gord setTitleWithMnemonic:str2];
    
    NSString *str3 = [NSString stringWithFormat:@"%.2f kg",fpeso*percG/100.0];
    [gord_corp setTitleWithMnemonic:str3];
    
    NSString *str4 = [NSString stringWithFormat:@"%.2f kg",fpeso - fpeso*percG/100.0];
    [massa_magra setTitleWithMnemonic:str4];
    
    /* 
     NSLog(str1);
     NSLog(str2);
     NSLog(str3);
     NSLog(str4);
    */
    
    
//    NSString *spGord = [NSString stringWithFormat:@"%.2f",percG];
//    NSString *sGord =  [NSString stringWithFormat:@"%.2f",peso*percG/100.0];
//    NSString *sMagra = [NSString stringWithFormat:@"%.2f",peso - peso*percG/100.0];
//    NSLog(spGord);

}

@end
