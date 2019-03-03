/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bignumbercalculator;

import java.util.ArrayList;

/**
 *
 * @author Ayhan
 */
public class BigNumber {
    
    ArrayList<Integer>liste1=new ArrayList<>();
    ArrayList<Integer>liste2=new ArrayList<>();
    int işaret1; //0 pozitif 1 negatif olacak;
    int işaret2;
    

    
    public ArrayList<Integer> minimum(ArrayList<Integer> liste1,ArrayList<Integer> liste2)
    {
        
        
        if(liste1.size()==liste2.size())
        {
            for(int i=0;i<liste1.size();i++)
            {
                if(liste1.get(i)>liste2.get(i))
                {
                   
                    return liste2; 
                  
                }
                if(liste1.get(i)<liste2.get(i))
                {
                    return liste1;
                    
                }
            }
        }
        if(liste1.size()>liste2.size())return liste2;
        else return liste1;
    
    }
    public ArrayList<Integer> maksimum(ArrayList<Integer> liste1,ArrayList<Integer> liste2)
    {
        
        
        if(liste1.size()==liste2.size())
        {
            for(int i=0;i<liste1.size();i++)
            {
                if(liste1.get(i)>liste2.get(i))
                {
                   
                    return liste1; 
                  
                }
                if(liste1.get(i)<liste2.get(i))
                {
                    return liste2;
                    
                }
            }
        }
        if(liste1.size()>liste2.size())return liste1;
        else return liste2;
    }
    public ArrayList<Integer> ekle(ArrayList<Integer> liste1,ArrayList<Integer> liste2)
    {
        
        
        if(liste1.size()<liste2.size())
        {
            //234
            // 65   
            int fark=liste2.size()-liste1.size();
            for (int i=0;i<fark;i++)
            {
                liste1.add(i,0);
                
            }
        }
        if(liste1.size()>liste2.size())
        {
            //2345456
            //   6578    
            int fark=liste1.size()-liste2.size();
            for (int i=0;i<fark;i++)
            {
                liste2.add(i,0);
                
                
            }
        }
        int elde=0;
        for(int i=liste1.size()-1;i>-1;i--)
        {
            
            int top=0;
            if(liste1.get(i)+liste2.get(i)<=9)
            {
                
                top=liste1.get(i)+liste2.get(i);
                liste1.set(i,top+elde);
                elde=0;
                
            }
            else
            {
                
                top=liste1.get(i)+liste2.get(i)-10;
                liste1.set(i,top+elde);
                elde++;
                if(elde>1)elde=1;
            }
            if(i==0 && elde!=0)
            {
                liste1.add(0,1);
            }
            
            
     
        }
        
        

        return liste1;
    }
    public ArrayList<Integer> sil(ArrayList<Integer> liste1,ArrayList<Integer> liste2)
    {
        if(liste1.size()<liste2.size())
        {
            ArrayList<Integer> a=liste1;
            ArrayList<Integer> b=liste2;
            liste1=b;
            liste2=a;
        }
        if(liste1.size()==liste2.size())
        {
            for(int i=0;i<liste1.size();i++)
            {
                if(liste1.get(i)<liste2.get(i))
                {
                    ArrayList<Integer> a=liste1;
                    ArrayList<Integer> b=liste2;
                    liste1=b;
                    liste2=a;
                    break;
                }
            }
        }
        if(liste1.size()<liste2.size())
        {
            //234
            // 65   
            int fark=liste2.size()-liste1.size();
            for (int i=0;i<fark;i++)
            {
                liste1.add(i,0);
                
            }
        }
        if(liste1.size()>liste2.size())
        {
            //2345456
            //   6578    
            int fark=liste1.size()-liste2.size();
            for (int i=0;i<fark;i++)
            {
                liste2.add(i,0);
                
                
            }
        }
        
        int elde=0;
        for(int i=liste1.size()-1;i>-1;i--)
        {
            
            int top=0;
            if(liste1.get(i)-liste2.get(i)>=0)
            {
                
                top=liste1.get(i)-liste2.get(i);
                liste1.set(i,top-elde);
                elde=0;
                
            }
            else
            {
                
                top=liste1.get(i)-liste2.get(i)+10;
                liste1.set(i,top-elde);
                elde++;
                if(elde>1)elde=1;
            }
     
        }
        return liste1;
        
    }
    
    
   
}
