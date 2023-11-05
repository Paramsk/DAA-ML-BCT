import java.util.*;

public class fibonacci {

    public static long fiboRecursive(int n) {
        if (n <= 0) {
            return 0;
        }
        if (n == 1) {
            return 1;
        }
        long[] fiboArray = new long[n + 1];
        fiboArray[0] = 0;
        fiboArray[1] = 1;
        for (int i = 2; i <= n; i++) {
            fiboArray[i] = fiboArray[i - 1] + fiboArray[i - 2];
        }
        return fiboArray[n];
    }

    public static void main(String[] args) {
        Scanner obj = new Scanner(System.in);
        System.out.println("Enter the number");
        int n = obj.nextInt();
        double startTime = System.nanoTime();

        for (int i = 0; i < n; i++) {
            System.out.println("fibonacci(" + i + ") = " + fiboRecursive(i));
        }
        double endTime = System.nanoTime();

        double executionTime = (endTime - startTime) / 1000000000;
        System.out.println("Time = " + executionTime);
        System.out.println("Space complexity is "+n);
        obj.close();
    }
}
