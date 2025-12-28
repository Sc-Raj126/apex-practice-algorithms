@isTest
public class BasicAlgorithmsTest {
    
    @isTest
    static void testFibonacci() {
        System.assertEquals(0, BasicAlgorithms.fibonacci(0));
        System.assertEquals(1, BasicAlgorithms.fibonacci(1));
        System.assertEquals(1, BasicAlgorithms.fibonacci(2));
        System.assertEquals(5, BasicAlgorithms.fibonacci(5));
        System.assertEquals(8, BasicAlgorithms.fibonacci(6));
    }
    
    @isTest
    static void testBinarySearch() {
        List<Integer> arr = new List<Integer>{1, 3, 5, 7, 9, 11};
        System.assertEquals(2, BasicAlgorithms.binarySearch(arr, 5));
        System.assertEquals(0, BasicAlgorithms.binarySearch(arr, 1));
        System.assertEquals(-1, BasicAlgorithms.binarySearch(arr, 4));
    }
    
    @isTest
    static void testBubbleSort() {
        List<Integer> arr = new List<Integer>{64, 34, 25, 12, 22, 11, 90};
        BasicAlgorithms.bubbleSort(arr);
        List<Integer> expected = new List<Integer>{11, 12, 22, 25, 34, 64, 90};
        System.assertEquals(expected, arr);
    }
    
    @isTest
    static void testReverseString() {
        System.assertEquals('dlrow', BasicAlgorithms.reverseString('world'));
        System.assertEquals('a', BasicAlgorithms.reverseString('a'));
        System.assertEquals('', BasicAlgorithms.reverseString(''));
    }
}
