package algo;

import java.util.Scanner;

public class fff {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner A = new Scanner(System.in);
		
		System.out.print("점수를 입력해주세요 : ");
		int input = A.nextInt();
		
		
		if(input>=90 && input<=100) {
			System.out.println("A");
		}else if(input >= 80 && input < 90) {
			System.out.println("B");
		}else if(input >= 70 && input < 80) {
		System.out.println("C");
		}else if(input >= 60 && input < 70) {
		System.out.println("D");
		}else {
			System.out.println("F");

		

	}

}
}