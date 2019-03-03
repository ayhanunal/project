/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bignumbercalculator;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Ayhan
 */

public class BigNumberCalculator {

 
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String komut = input.nextLine();
        String[] al;
        al=komut.split(" ");
        String say1=al[1];
        String say2=al[2];
        
        
        
        
        ArrayList<Integer>liste1=new ArrayList<>();
        ArrayList<Integer>liste2=new ArrayList<>();
        int uzunluk1=say1.length();
        int uzunluk2=say2.length();
        for(int i=0;i<uzunluk1;i++)
        {
            
            char x=say1.charAt(i);
            int y=Integer.parseInt(String.valueOf(x));
            liste1.add(y);
            
        }for(int i=0;i<uzunluk2;i++)
        {
            char x=say2.charAt(i);
            int y=Integer.parseInt(String.valueOf(x));
            liste2.add(y);
            
        }
        
        
        if(al[0].equals("min"))
        {
            BigNumber nesnem=new BigNumber();
            ArrayList<Integer> dizi=nesnem.minimum(liste1, liste2);
            System.out.print("sonuç :");
            for(int i=0;i<dizi.size();i++)
            {
                System.out.print(dizi.get(i));
                
            }
            System.out.println("");
            
            
        }
        else if (al[0].equals("add"))
        {
           BigNumber nesnem=new BigNumber();
           ArrayList<Integer> dizi=nesnem.ekle(liste1, liste2);
           System.out.print("sonuç :");
           for(int i=0;i<dizi.size();i++)
           {
                System.out.print(dizi.get(i));
                
           }
           System.out.println("");
        }
        else if(al[0].equals("max"))
        {
            BigNumber nesnem=new BigNumber();
            ArrayList<Integer> dizi=nesnem.maksimum(liste1, liste2);
            System.out.print("sonuç :");
            for(int i=0;i<dizi.size();i++)
            {
                System.out.print(dizi.get(i));
                
            }
            System.out.println("");
        }
        else if (al[0].equals("sub"))
        {
           BigNumber nesnem=new BigNumber();
           ArrayList<Integer> dizi=nesnem.sil(liste1, liste2);
           
           System.out.print("sonuç :");
           if(liste1.size()<liste2.size())
            {
                System.out.print("-");
            }
           if(liste1.size()==liste2.size())
            {
                for(int i=0;i<liste1.size();i++)
                {
                    if(liste1.get(i)>liste2.get(i))
                    {
                        System.out.print("-");
                        break;
                    }
                }
            }
           for(int i=0;i<dizi.size();i++)
           {
                System.out.print(dizi.get(i));
                
           }
           System.out.println("");
        }
        
        
        
        
        
    }
    
}

