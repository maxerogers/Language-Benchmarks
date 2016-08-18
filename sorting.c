#include <time.h>     /* time */
#include <stdlib.h>  /* qsort() */
#include <stdio.h>   /* printf() */
#include <math.h>   /* pow() */

int intcmp(const void *aa, const void *bb) {
    const int *a = aa, *b = bb;
    return (*a < *b) ? -1 : (*a > *b);
}

int randRange(const int upper) {
  return rand() % upper;
}

int* generateRandomArray(int size) {
  int* result = (int *)malloc(sizeof(int)*size);
  for(int i=0; i < size; i++) {
    result[i] = randRange(size);
  }
  return result;
}

void printArray(int* array, int size) {
  for(int i=0; i < size; i++) {
    printf("%d, ",array[i]);
  }
  printf("\n");
}

int main(int argc, char *argv[]) {
  srand(time(NULL));
  int n = 5;

  if (argc > 1) {
    n = atoi(argv[1]);
  }

  double startTime = (double)clock()/CLOCKS_PER_SEC;

  int upperBound = (int)pow((double)10,(double)n);
  int* nums = generateRandomArray(upperBound);
  // printArray(nums, upperBound);
  qsort(nums, upperBound, sizeof(int), intcmp);
  // printArray(nums, upperBound);
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;

  printf("C\tSorting:\t%d\tExecTime: %.2Es \tn:%d\n", upperBound, timeElapsed, n);
  return 0;
}
