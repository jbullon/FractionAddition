#import "Fraction.h"
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

int main(int argc, char * argv[])
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        // Set and print first fraction to 1/4
            [aFraction setTo:1 over:4];
            [aFraction print];
                NSLog(@"+");
        
        // Set and print second fraction to 1/2
            [bFraction setTo:1 over:2];
            [bFraction print];
                NSLog(@"=");
        
        // Add and reduce the two fractions if necessary
            [aFraction add: bFraction];
            [aFraction reduce];
            [aFraction print];
    }
    return 0;
}
