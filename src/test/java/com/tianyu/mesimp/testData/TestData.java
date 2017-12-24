package com.tianyu.mesimp.testData;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.junit.Test;

public class TestData {

	
	private List<Integer> randomInt(Integer total , int num){
		
		List<Integer> result = new ArrayList<Integer>();
		
		Integer baseInt = total / num;
		
		Integer randomStep = baseInt / (num+1);
		
		Integer totalResult = 0;
		for(int i = 0 ; i < num - 1 ; i++){
			int n = baseInt + new Random().nextInt(randomStep * 6) - randomStep*3;
			result.add(n);
			
			totalResult += n;
		}
		result.add(total - totalResult);
		return result;
		
	}
	
	@Test
	public void testRandom(){
		List<Integer> aaa = randomInt(18976, 10);
		for(Integer a : aaa){
			System.out.println(a);
		}
	}
}
