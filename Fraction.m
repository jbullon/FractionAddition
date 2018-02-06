#import "Fraction.h"
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@implementation Fraction
@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}
-(void) add:(Fraction *)f
{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}
-(void) reduce
{
    int u = numerator;          // Local variables are used to manipulate numerator and
    int v = denominator;        // denominator variables without changing the original value
    int temp;
    
    while (v!=0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
