import numpy as np
import mysql.connector

from scipy import spatial

def SimilariteCosinus(idU1,idU2):
    return (1 - spatial.distance.cosine(matriceNotes[idU1], matriceNotes[idU2]))

def MaxMax(List,n):
  L=[]

  for i in range(n):
    L.append(np.argmax(List))
    List[np.argmax(List)]=0

  return L 


conn = mysql.connector.connect(host="localhost",user="root",password="",database="burger_code")

cursor=conn.cursor()


cursor.execute("SELECT COUNT(id) FROM items")
NbPdt= cursor.fetchall()[0][0]

cursor.execute("SELECT COUNT(id_user) FROM user")
NbUser = cursor.fetchall()[0][0]


cursor.execute("""select * from notes""")
matriceNotes=np.zeros((NbUser,NbPdt))


for notes in cursor.fetchall():
   
    matriceNotes[notes[1]-1][notes[0]-1]=notes[2]
    
print(matriceNotes)
print("----------------------------")
matriceSimUser=np.zeros((NbUser,NbUser))
for u1 in range(NbUser):
    for u2 in range(NbUser):
        matriceSimUser[u1][u2]=SimilariteCosinus(u1,u2)

print(matriceSimUser)


conn.close()


n=3
for u in range (NbUser):
    matriceSimUser[u][u]=0
    UserSIM=MaxMax(matriceSimUser[u],n)
    print("Top ",n," user de ",u+1,"est : ", [us+1 for us in UserSIM])

