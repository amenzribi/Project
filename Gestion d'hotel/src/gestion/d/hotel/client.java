
package gestion.d.hotel;


import java.util.Scanner;


public class client {
    
    int CIN;
    String nom;
    String prenom;
    String nationalite;
    int tel;
    String adresse;
      


   
    
    
    void client(){
        nom = "";
        prenom = "";
        nationalite = "";
        adresse="";
        tel=0;
        CIN=0;               
       
    }

     public client(int CIN, String nom, String prenom, String nationalite, int tel, String adresse) {
        this.CIN = CIN;
        this.nom = nom;
        this.prenom = prenom;
        this.nationalite = nationalite;
        this.tel = tel;
        this.adresse = adresse;
       
        
    }
    
    public void saisie (){
        Scanner sc = new Scanner (System.in);
        System.out.println("donner le nom du client"+nom);
        nom=sc.nextLine();
        System.out.println("donner le prenom du client"+prenom);
        prenom=sc.nextLine();
        System.out.println("donner la nationalite du client"+nationalite);
        nationalite=sc.nextLine();
        System.out.println("donner l'adresse du client"+adresse);
        adresse=sc.nextLine();    
       System.out.println("donner le numéro tél du client"+tel);
        tel=sc.nextInt();
        System.out.println("donner le numéro de la carte CIN du client"+CIN);
          CIN=sc.nextInt();
        
              

        
        
    }
    
    public int getCIN(){
        return CIN;
    }
     void setCIN(int CIN){
        this.CIN=CIN;
        
    }
     public String getnom(){
         return nom;
     }
     void setnom(String nom){
        this.nom=nom;
        
    }
    
    public String getprenom(){
        return prenom;
        
    }
    
    void setprenom(String prenom){
        this.prenom=prenom;
    }
    
    public  String getnationalite(){
        return nationalite;
        
    }
    
    void setnationalite(String nationalite){
        this.nationalite=nationalite;
    }
    
    public String getadresse(){
      return adresse;  
    }
    void setadresse(String adresse){
        this.adresse=adresse;
    }
    public int gettel(){
        return tel;
        
    }
    void settel(int tel){
        this.tel=tel;
    }
    
    
   
         
    
    
}























    
          
          
          
 
      
      
              
          
         
    
           
           
     
 
          




     
      
      
      
        
    
     
     
   
        
        
       
       
       
       
        
    

   
    

