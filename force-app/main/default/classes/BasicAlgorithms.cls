public class BasicAlgorithms {
    
    // Fibonacci sequence using recursion
    public static Integer fibonacci(Integer n) {
        if (n <= 1) {
            return n;
        }
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
    
    // Binary search implementation
    public static Integer binarySearch(List<Integer> arr, Integer target) {
        Integer left = 0;
        Integer right = arr.size() - 1;
        
        while (left <= right) {
            Integer mid = left + (right - left) / 2;
            
            if (arr[mid] == target) {
                return mid;
            } else if (arr[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return -1;
    }
    
    // Bubble sort
    public static void bubbleSort(List<Integer> arr) {
        Integer n = arr.size();
        
        for (Integer i = 0; i < n - 1; i++) {
            for (Integer j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // Swap
                    Integer temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }
    
    // Reverse a string
    public static String reverseString(String str) {
        if (String.isEmpty(str)) {
            return str;
        }
        return reverseString(str.substring(1)) + str.substring(0, 1);
    }
}
