
package gestion.d.hotel;

import java.util.Scanner;


public class Date {
  int jour_arrivé_C;
  int mois_arrivé_C;
  int annee_arrivé_C;
  
  int jour_reservation_C;
  int mois_reservation_C;
  int annee_reservation_C;
  
  
  
  
  
  
  
  
     public Date(){
      jour_arrivé_C = 0;
      mois_arrivé_C = 0;
      annee_arrivé_C = 0;  
      
      
      jour_reservation_C=0;
      mois_reservation_C=0;
      annee_reservation_C=0;
      
      
  }

    public Date(int jour_arrivé_C, int mois_arrivé_C, int annee_arrivé_C, int jour_reservation_C, int mois_reservation_C, int annee_reservation_C) {
        this.jour_arrivé_C = jour_arrivé_C;
        this.mois_arrivé_C = mois_arrivé_C;
        this.annee_arrivé_C = annee_arrivé_C;
        
        this.jour_reservation_C=jour_reservation_C;
        this.mois_reservation_C=mois_reservation_C;
        this.annee_reservation_C=annee_reservation_C;
    }
  public void saisie_Dates_client (){
      Scanner sc = new Scanner(System.in);
      System.out.println("donner le jour d'arrivée du client"+jour_arrivé_C);
      jour_arrivé_C=sc.nextInt();
            System.out.println("donner le mois d'arrivée du client"+mois_arrivé_C);
              mois_arrivé_C=sc.nextInt();
            
                  System.out.println("donner l'annee d'arrivée du client"+annee_arrivé_C);
                 annee_arrivé_C=sc.nextInt();
                 
                  System.out.println("donner le jour de reservation du client:"+jour_reservation_C);
                  jour_reservation_C=sc.nextInt();
                  
                  
                  
                   System.out.println("donner le mois de reservation du client:"+mois_reservation_C);
                   mois_reservation_C=sc.nextInt();
                   
                   System.out.println("donner l'annee du reservation du client:"+annee_reservation_C);
                   annee_reservation_C=sc.nextInt();
                   
                   

                  
  }
 public void affichage (){
      System.out.println("jour d'arrivé du client:"+jour_arrivé_C);
            System.out.println("mois d'arrivé du client:"+mois_arrivé_C);
      System.out.println("annee d'arrivé du client:"+annee_arrivé_C);
      

       System.out.println("jour de reservation du client:"+jour_reservation_C);
        System.out.println("mois de reservation du client:"+mois_reservation_C);
         System.out.println("annee de reservation du client:"+annee_reservation_C);
      
  }
  
}

