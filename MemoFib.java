import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;
import java.text.*;
import java.math.*;

public class MemoFib {
  static HashMap<Integer, Integer> hmap;

  public static int fib(int n) {
    if (hmap.get(n) != null) {
      return hmap.get(n);
    }
    if (n <= 0) {
      hmap.put(n, 0);
      return hmap.get(n);
    }
    else if (n <= 2) {
      hmap.put(n, 1);
      return hmap.get(n);
    }
    else {
      hmap.put(n, fib(n-2) + fib(n-1));
      return hmap.get(n);
    }
  }

  public static void main (String[] args) {
    int fib_input = 30;
    if(args[0] != null)
    {
      fib_input= Integer.parseInt(args[0]);
    }
    final double startTime = System.nanoTime();
    hmap = new HashMap<Integer, Integer>();
    int fib = fib(fib_input);
    final double endTime = System.nanoTime();
    NumberFormat formatter = new DecimalFormat("0.##E0");
    System.out.println("JAVA\tMemo Fibonacci:\t"+fib+"\tExecTime: " + formatter.format((endTime - startTime)*Math.pow(10, -9)) + "s\tn:"+fib_input);
  }
}
