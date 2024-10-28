/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package belajar.java;


    
import java.util.Scanner;
    
  
public class BelajarJava {
    public static void main(String[] args) {
       /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

    System.out.println("Pola a:");
    for(int i = 4; i >= 1;i--){
        for(int j = 1 ;j <= i; j++){
            System.out.print(j + " ");
        }
        System.out.println(" ");
    }
    
System.out.println(" ");

System.out.println("Pola b:");
    for(int i = 4; i >= 1;i--){
        for(int j = 1 ;j <= i; j++){
            System.out.print(i + " ");
        }
        System.out.println(" ");
    }
    
    System.out.println(" ");
 
    System.out.println("Pola c:");
    for(int i = 1; i <= 4;i++){
            for(int j = 1 ;j <= i; j++){
                System.out.print(j + " ");
            }
            System.out.println(" ");
        }
    
System.out.println(" ");

System.out.println("Pola d:");
    for(int i = 1; i <= 4;i++){
                for(int j = 1 ;j <= i; j++){
                    System.out.print(i + " ");
                }
                System.out.println(" ");
            }
    
    System.out.println(" ");
    
    System.out.println("Pola e:");
    for(int i = 1; i <= 4;i++){
        for(int j = 1 ;j <= i; j++){
            System.out.print("* ");
                }
            System.out.println(" ");
            }
    System.out.println(" ");
      
    System.out.println("Pola f:");
    for(int i = 4; i >= 1;i--){
        for(int j = 1 ;j <= i; j++){
            System.out.print("* ");
                }
            System.out.println(" ");
            }
    
    }
}
