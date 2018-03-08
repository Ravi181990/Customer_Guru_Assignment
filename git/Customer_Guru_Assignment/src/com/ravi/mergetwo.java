package com.ravi;

public class mergetwo {
	// Merge arr1[0..n1-1] and arr2[0..n2-1] 
    // into arr3[0..n1+n2-1]
    public static void mergeArrays(int[] arrayA, int[] arrayB, int a,
                                int b, int[] arrayC)
    {
        int i = 0, j = 0, k = 0;
     
        // Traverse both array
        while (i<a && j <b)
        {
           
            if (arrayA[i] < arrayB[j])
            	arrayC[k++] = arrayA[i++];
            else
            	arrayC[k++] = arrayB[j++];
        }
     
        // Store remaining elements of first array
        while (i < a)
        	arrayC[k++] = arrayA[i++];
     
        // Store remaining elements of second array
        while (j < b)
        	arrayC[k++] = arrayB[j++];
    }
     
    public static void main (String[] args) 
    {
        int[] arrayA = {1,0,0,0,0,0};
        int a = arrayA.length;
     
        int[] arrayB = {1,0,0,0,0,0};
        int b = arrayB.length;
     
        int[] arrayC = new int[a+b];
         
        mergeArrays(arrayA, arrayB, a, b, arrayC);
     
        System.out.println("Array after merging");
        for (int i=0; i < a+b; i++)
            System.out.print(arrayC[i] + " ");
    }
	

}
