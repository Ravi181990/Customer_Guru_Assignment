package com.ravi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;;



public class Repeated_words {
   

    public static void repeatedwords(String strContent) {
 
        Map<String, Integer> mapOfRepeatedWord = new HashMap<String, Integer>();

        String[] words = strContent.split(",");
        for(String word : words) {
 
            String tempUCword = word.toLowerCase();

            if(mapOfRepeatedWord.containsKey(tempUCword)){
 
                mapOfRepeatedWord.put(tempUCword, mapOfRepeatedWord.get(tempUCword) + 1);
            } 
            else {
                mapOfRepeatedWord.put(tempUCword, 1);
            }
        }

        Map<String, Integer> wordLHMap = sortByCountValue(mapOfRepeatedWord);
 
        System.out.println("\n\ndescending order of count : \n");
        System.out.println("Words" + "\t\t" + "Count");
        System.out.println("======" + "\t\t" + "=====");
 
        // Step 10: Again print after sorting
        for(Map.Entry<String, Integer> entry : wordLHMap.entrySet()){
            System.out.println(entry.getKey() + "\t\t" + entry.getValue());
        }
    }
 
    public static Map<String, Integer> sortByCountValue(
            Map<String, Integer> mapOfRepeatedWord) {
 
    
        Set<Map.Entry<String, Integer>> setOfWordEntries = mapOfRepeatedWord.entrySet();
 
    
        List<Map.Entry<String, Integer>> listOfwordEntry = 
                new ArrayList<Map.Entry<String, Integer>>(setOfWordEntries);
 
        
        Collections.sort(listOfwordEntry, 
                new Comparator<Map.Entry<String, Integer>>() {
 
            @Override
            public int compare(Entry<String, Integer> es1, 
                    Entry<String, Integer> es2) {
                return es2.getValue().compareTo(es1.getValue());
            }
        });
 
       
        Map<String, Integer> wordLHMap = 
                new LinkedHashMap<String, Integer>();
 
      
        for(Map.Entry<String, Integer> map : listOfwordEntry){
            wordLHMap.put(map.getKey(), map.getValue());
        }
 
        return wordLHMap;
    }
    public static void main(String[] args) {
    	 
        
        String inputstring = "AAA,AAA,BBB,BBB,BBB,CC,CC,XXX,XXX,PP,QQ,XXX,XXX";
 
        
        repeatedwords(inputstring);
    }
}
	

