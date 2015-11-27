//Max Rogers
//Objective-C Dynamic Fibonacci C-Style
//to build:
//clang fib.m -lobjc -framework Foundation

#import <Foundation/Foundation.h>

@interface Fibonacci : NSObject
@end
@implementation Fibonacci

+ (NSMutableDictionary *)memo {
    static NSMutableDictionary *memo = nil;
    if (memo == nil) {
        memo = [@{@0:@0} mutableCopy];
    }
    return memo;
}

@end

NSUInteger fib(NSUInteger n) {
    NSNumber *key = [NSNumber numberWithInt:n];
    if (Fibonacci.memo[key]) {
        return [Fibonacci.memo[key] intValue];
    }
    if (n <= 0) {
        Fibonacci.memo[key] = @0;
    }
    else if (n <= 2) {
        Fibonacci.memo[key] = @1;
    }
    else {
        Fibonacci.memo[key] = [NSNumber numberWithInt:fib(n-2) + fib(n-1)];
    }
    return [Fibonacci.memo[key] intValue];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 30;

        if (argc > 1) {
            n = atoi(argv[1]);
        }

        double startTime = (double)clock()/CLOCKS_PER_SEC;
        int x = fib((NSUInteger) n);
        double endTime = (double)clock()/CLOCKS_PER_SEC;
        double timeElapsed = endTime - startTime;
        printf("ObjC\tMemo Fibonacci:\t%d\tExecTime: %.2Es\tn:%d\n",x,timeElapsed,n);
    }
    return 0;
}
