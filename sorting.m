//Max Rogers
//Objective-C Dynamic Fibonacci C-Style
//to build:
//clang fib.m -lobjc -framework Foundation

#import <Foundation/Foundation.h>
#include <math.h>

@interface Sorting: NSObject
@end
@implementation Sorting

+ (NSMutableArray *)generateRandomArray:(NSInteger)size {
  NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:size];
  for (NSInteger i=0; i<size; i++) {
    array[i] = @(arc4random_uniform(size));
  }
  return array;
}

+ (void)printArray:(NSArray *)array {
  for (NSInteger i=0; i<array.count; i++) {
    NSNumber *number = array[i];
    printf("%d ", number.intValue);
  }
}

@end

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int n = 5;

    if (argc > 1) {
      n = atoi(argv[1]);
    }

    double startTime = (double)clock()/CLOCKS_PER_SEC;

    int size = pow(10,n);
    NSMutableArray *array = [Sorting generateRandomArray:size];
    NSSortDescriptor *lowestToHighest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    [array sortUsingDescriptors:[NSArray arrayWithObject:lowestToHighest]];
    // [Sorting printArray:array];

    double endTime = (double)clock()/CLOCKS_PER_SEC;
    double timeElapsed = endTime - startTime;
    printf("ObjC\tSorting:\t%d\tExecTime: %.2Es\tn:%d\n",size,timeElapsed,n);
  }
  return 0;
}
