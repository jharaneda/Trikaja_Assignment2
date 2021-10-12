package com.csis3275.model;

import java.util.Random;

public class Likes_kne_58 {
	
	public String likes() {
		
		String[] likes = new String[9];
		
		likes[0]="Zelda";
		likes[1]="One Piece";
		likes[2]="Sushi";
		likes[3]="Computers";
		likes[4]="Lord of The Rings";
		likes[5]="Final Fantasy";
		likes[6]="Cats";
		likes[7]="Ramen";
		likes[8]="Green";
		
		Random rand = new Random();
		int max = 9;
		
		int randNum = rand.nextInt(max);
		
		return likes[randNum];
		
	}
}
