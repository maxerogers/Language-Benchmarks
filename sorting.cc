//Max Rogers
//sorting.cc
#include <iostream>     // std::cout
#include <algorithm>    // std::sort
#include <vector>       // std::vector
#include <time.h>       /* time */
#include <math.h>       /* pow() */
#include <stdlib.h>     /* srand, rand */

bool sorterFunc (int i,int j) { return (i<j); }

int* generateRandomArray(int size) {
  int* result = new int [size];
  for (int i=0; i < size; i++) {
    result[i] = rand() % size;
  }
  return result;
}

void printArray(int* array, int size) {
  for (int i=0; i< size; i++) {
    printf("%d, ", array[i]);
  }
  printf("\n");
}

void printVector(std::vector<int> myVector) {
  for (std::vector<int>::iterator it=myVector.begin(); it!=myVector.end(); ++it)
    std::cout << ' ' << *it;
  std::cout << '\n';
}

int main(int argc, char *argv[]) {
  int n = 5;
  srand (time(NULL));
  if (argc > 1) {
    n = std::stoi(argv[1]);
  }

  double startTime = (double)clock()/CLOCKS_PER_SEC;

  int size = (int)pow((double)10,(double)n);
  int *myints = generateRandomArray(size);
  std::vector<int> myvector (myints, myints+size);
  // printVector(myvector);
  std::sort (myvector.begin(), myvector.end(), sorterFunc);
  // printVector(myvector);
  double endTime = (double)clock()/CLOCKS_PER_SEC;

  double timeElapsed = endTime - startTime;
  printf("C++\tSorting:\t%d\tExecTime: %.2Es \tn:%d\n", size, timeElapsed, n);
  return 0;
}
