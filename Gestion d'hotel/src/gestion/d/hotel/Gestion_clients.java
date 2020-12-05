
package gestion.d.hotel;

import java.util.ArrayList;


public class Gestion_clients {
    ArrayList<String> C = new ArrayList<>(50);
    String nom;
    String prenom;

    public Gestion_clients(String nom, String prenom) {
        this.nom = nom;
        this.prenom = prenom;
    }
    
    public void ajouter (client c){
        C.add(nom);
        C.add(prenom);
    }
    
    public void modifier(client c){
        C.set(0, "nom");
    }
    
    public void supprimer (client c){
        C.remove(0);
        
    }
    
    
}
