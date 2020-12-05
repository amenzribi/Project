
package gestion.d.hotel;

import java.util.ArrayList;
import java.util.Scanner;


class Reservation {
    ArrayList R =new ArrayList();
    int ID_reservation;
    int NB_personnes;
    int NB_chambres;
    int NB_nuitées;
    String nomC;
    String prenomC;
    String nationalité_C;
    int CIN_C;
    
    
    void reservation(){
        ID_reservation = 0;
        NB_personnes = 0;
        NB_chambres = 0;
        NB_nuitées = 0;
        nomC = "";
        prenomC="";
        nationalité_C="";
        CIN_C=0;
    }

    public Reservation(int ID_reservation, int NB_personnes, int NB_chambres, int NB_nuitées,String nomC,String prenomC,String nationalité_C,int CIN_C) {
        this.ID_reservation = ID_reservation;
        this.NB_personnes = NB_personnes;
        this.NB_chambres = NB_chambres;
        this.NB_nuitées = NB_nuitées;
        this.nomC = nomC;
        this.prenomC=prenomC;
        this.nationalité_C=nationalité_C;
        this.CIN_C=CIN_C;
       
    }
    
    
    
    
    void saisie(){
        
        Scanner sc = new Scanner (System.in);
        System.out.println("donner l'ID de réservation:"+ID_reservation);
        ID_reservation=sc.nextInt();
         System.out.println("donner le nombres des personnes:"+NB_personnes);
         NB_personnes=sc.nextInt();         
         System.out.println("donner le nombres des chambres:"+NB_chambres);
         NB_chambres=sc.nextInt();
         System.out.println("donner le nombres des nuitées:"+NB_nuitées);
         NB_nuitées=sc.nextInt();
         System.out.println("donner le nom du client:"+nomC);
         nomC=sc.nextLine();         
         System.out.println("donner le prenom du client:"+prenomC);
         prenomC=sc.nextLine();
         System.out.println("donner la nationalité du client:"+nationalité_C);
         nationalité_C=sc.nextLine();
         System.out.println("donner le N° de la carte identité du client:"+CIN_C);
         CIN_C=sc.nextInt();
         
         
        
    }

    public int getID_reservation() {
        return ID_reservation;
    }

    public int getNB_personnes() {
        return NB_personnes;
    }

    public int getNB_chambres() {
        return NB_chambres;
    }

    public int getNB_nuitées() {
        return NB_nuitées;
    }

    public String getnomC(){
        return nomC;        
    }
    public String getprenomC(){
        return prenomC;
    }
    public String getnationalité_C(){
        return nationalité_C;
    }
    
    public int getCIN_C(){
        return CIN_C;
    }
    
    
    
    
    
    
    
    
    public void setID_reservation(int ID_reservation) {
        this.ID_reservation = ID_reservation;
    }

    public void setNB_personnes(int NB_personnes) {
        this.NB_personnes = NB_personnes;
    }

    public void setNB_chambres(int NB_chambres) {
        this.NB_chambres = NB_chambres;
    }

    public void setNB_nuitées(int NB_nuitées) {
        this.NB_nuitées = NB_nuitées;
    }

    
    public void setnomC(String nomC){
        this.nomC = nomC;
    }
    public void setprenomC(String prenomC){
        this.prenomC=prenomC;
    }
    
    public void setnationalitéC(String nationalitéC){
        this.nationalité_C=nationalitéC;
        
    }
    public void setCIN_C(int CIN_C){
        this.CIN_C=CIN_C;
    }
    
    
    
    
    
    
    
    
    
    
    
    public void ajouter_reservation (){
        R.add(NB_personnes);
        
        R.add(NB_nuitées);
        
        System.out.println(R.get(1));
        System.out.println(R.get(3));
                                                                      
        
        
    }
    
    public void modifier_reservation(){
        R.set(0,CIN_C);
        
        System.out.println(R.get(0));
                
                
                
                
        
                                
    }
    
    public void supprimer_reservation(){
        R.remove(4);
        
        System.out.println(R);
    }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
