import numpy as np
import mysql.connector
import nltk 
from nltk.corpus import stopwords
from nltk.stem.snowball import FrenchStemmer
from scipy import spatial



def SimilariteCosinus(Id_prod1,Id_prod2):
    return (1- spatial.distance.cosine(matriceBin[Id_prod1],matriceBin[Id_prod2]))

def MaxMax(List,n):
  L=[]

  for i in range(n):
    L.append(np.argmax(List))
    List[np.argmax(List)]=0

  return L 



def convertlist(List):
    Ch=""
    for i in List:
        Ch+=str(i)+','
    
    return Ch[:-1]



conn = mysql.connector.connect(host="localhost",user="root",password="", database="burger_code")

cursor=conn.cursor()
cursor.execute("select * from items")
stop=set(stopwords.words('french'))
stop=list(stop)
stop.extend([".",",",";","#","!","?","...","'",'"',':'])
stemmer=FrenchStemmer()
MotsUniques=set()
NbMots=0
NbPdts=0
DictMots={}
for ligne in cursor.fetchall():
    NbPdts+=1
    
    print("Id Produit:" ,ligne[0])
    print("Nom produit:",ligne[1])
    print("desc Produit :", ligne[2])
    desc=ligne[2]
    mots=nltk.word_tokenize(desc)
    print(mots)
    Mots=[m for m in mots if m not in stop]
    MotsStem=[]
    for m in Mots:
        MotsStem.append(stemmer.stem(m))
        print('------------')
        print(MotsStem)
        for m in MotsStem:
            MotsUniques.add(m)
            DictMots[ligne[0]]=MotsStem

NbMots=len(MotsUniques)
print(NbMots)
print(NbPdts)
matriceBin=np.zeros((NbPdts,NbMots))
for i in range (NbPdts):
    j=0
    for m in MotsUniques:
       
        if(m in DictMots[i+1]):
            matriceBin[i][j]=1
        j+=1
MatriceSimilariteBin=np.zeros((NbPdts,NbPdts))
for s in range(NbPdts):
    for z in range (NbPdts):
        MatriceSimilariteBin[s][z]=SimilariteCosinus(s,z)
print(MatriceSimilariteBin)


n=6
for p in range (NbPdts):
    MatriceSimilariteBin[p][p]=0
    PdtSIM=MaxMax(MatriceSimilariteBin[p],n)
    produitSimilaire=[Pdt+1 for Pdt in PdtSIM]
    print("Top ",n," produits de ",p+1,"est : ", produitSimilaire)
    CHproduitSimilaire=convertlist(produitSimilaire)
    sql="INSERT INTO recomendation (id_produit , rec) VALUES (%s,%s) ON DUPLICATE KEY UPDATE rec= %s"
        
    val=(str(p+1),CHproduitSimilaire,CHproduitSimilaire)
    cursor.execute(sql,val)

    conn.commit()
    
    
    
    
    
    
    
conn.close()   