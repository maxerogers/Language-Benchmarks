import java.text.*;
import java.math.*;

public class Fib {

  public static int fib(int n) {
    if (n <= 0) {
      return 0;
    }
    else if (n <= 2) {
      return 1;
    }
    else {
      return fib(n-2) + fib(n-1);
    }
  }

  public static void main (String[] args) {
    int fib_input = 30;
    if(args[0] != null)
    {
      fib_input= Integer.parseInt(args[0]);
    }
    final double startTime = System.nanoTime();
    int fib = fib(fib_input);
    final double endTime = System.nanoTime();
    NumberFormat formatter = new DecimalFormat("0.##E0");
    System.out.println("JAVA\tFibonacci:\t"+fib+"\tExecTime: " + formatter.format((endTime - startTime)*Math.pow(10, -9)) + "s\tn:"+fib_input);
  }
}
