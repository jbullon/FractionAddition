//
//  Fraction.h
//  Splitting Files Practice
//
//  Created by Jacob Bullon on 2/5/18.
//  Copyright © 2018 Jacob Bullon. All rights reserved.
//

#import <Foundation/Foundation.h>

// Fraction Class
@interface Fraction : NSObject
@property int numerator, denominator;

-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (Fraction*) f;
-(void) reduce;
@end
