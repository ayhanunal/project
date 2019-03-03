class Fakülte:
    def __init__(self,numara,ad,bölüm,dersler):
        self.__numara=numara
        self.__ad=ad
        self.__bölüm=bölüm
        self.__dersler=dersler

    def bilgisayar(self):
        ders=""
        for i in range(len(self.__dersler)):
            if i!=len(self.__dersler)-1:
                ders+=self.__dersler[i]+","
            else:
                ders+=self.__dersler[i]
        if self.__bölüm!="Makine Mühendisliği":
            print("**************************************************************************")
            print("İsim :",self.__ad,sep="")
            print("Numara :",self.__numara,sep="")
            print("Bölüm :",self.__bölüm,sep="")
            print("Alınan Dersler :",ders,sep="")
            print("**************************************************************************")
    def makine(self):
        ders=""
        for i in range(len(self.__dersler)):
            if i!=len(self.__dersler)-1:
                ders+=self.__dersler[i]+","
            else:
                ders+=self.__dersler[i]
        if self.__bölüm!="Bilgisayar Mühendisliği":
            print("**************************************************************************")
            print("İsim :",self.__ad,sep="")
            print("Numara :",self.__numara,sep="")
            print("Bölüm :",self.__bölüm,sep="")
            print("Alınan Dersler :",ders,sep="")
            print("**************************************************************************")        
    def fizik(self):
        ders=""
        for i in range(len(self.__dersler)):
            if i!=len(self.__dersler)-1:
                ders+=self.__dersler[i]+","
            else:
                ders+=self.__dersler[i]
        if self.__bölüm!="Kimya":
            print("**************************************************************************")
            print("İsim :",self.__ad,sep="")
            print("Numara :",self.__numara,sep="")
            print("Bölüm :",self.__bölüm,sep="")
            print("Alınan Dersler :",ders,sep="")
            print("**************************************************************************")
    def kimya(self):
        ders=""
        for i in range(len(self.__dersler)):
            if i!=len(self.__dersler)-1:
                ders+=self.__dersler[i]+","
            else:
                ders+=self.__dersler[i]
        if self.__bölüm!="Fizik":
            print("**************************************************************************")
            print("İsim :",self.__ad,sep="")
            print("Numara :",self.__numara,sep="")
            print("Bölüm :",self.__bölüm,sep="")
            print("Alınan Dersler :",ders,sep="")
            print("**************************************************************************") 

    def get_ad(self):
        return self.__ad
    def get_numara(self):
        return self.__numara
    def get_bölüm(self):
        return self.__bölüm
    def get_dersler(self):
        return self.__dersler
        
            
class Mühendislik(Fakülte):
    def __init__(self,numara,ad,bölüm,dersler):
        Fakülte.__init__(self,numara,ad,bölüm,dersler)

    def stajYap(self):
        print("Staj Tarihleri :13.06.2017-17.08.2017")
        print("**************************************************************************")

class FenEdebiyat(Fakülte):
    def __init__(self,numara,ad,bölüm,dersler):
        Fakülte.__init__(self,numara,ad,bölüm,dersler)

    def formasyonAl(self):
        print("Formasyon Tarihleri :23.06.2017-02.08.2017")
        print("**************************************************************************")

        
def Nesne(sözlük):
    liste=[]
    for i in range(0,len(sözlük["Mühendislik"]),4):
        numara=sözlük["Mühendislik"][i]
        isim=sözlük["Mühendislik"][i+1]
        bölüm=sözlük["Mühendislik"][i+2]
        dersler=sözlük["Mühendislik"][i+3].split("-")
        ders=[]
        if bölüm=="1":
            bölüm="Bilgisayar Mühendisliği"
            for eleman in dersler:
                if eleman=="1":
                    ders.append("Programlamaya Giriş")
                if eleman=="2":
                    ders.append("Elektrik Devreleri")
                if eleman=="3":
                    ders.append("Algoritmalar")
        if bölüm=="2":
            bölüm="Makine Mühendisliği"
            for eleman in dersler:
                if eleman=="1":
                    ders.append("Teknik Resim")
                if eleman=="2":
                    ders.append("Akışkanlar")
                if eleman=="3":
                    ders.append("Statik")
        ekle=Mühendislik(numara,isim,bölüm,ders)
        liste.append(ekle)
    liste2=[]
    for i in range(0,len(sözlük["FenEdebiyat"]),4):
        numara=sözlük["FenEdebiyat"][i]
        isim=sözlük["FenEdebiyat"][i+1]
        bölüm=sözlük["FenEdebiyat"][i+2]
        dersler=sözlük["FenEdebiyat"][i+3].split("-")
        ders=[]
        if bölüm=="1":
            bölüm="Fizik"
            for eleman in dersler:
                if eleman=="1":
                    ders.append("Temel Fizik")
                if eleman=="2":
                    ders.append("Dalgalar ve Optik")
                if eleman=="3":
                    ders.append("Nükleer Fizik")
        if bölüm=="2":
            bölüm="Kimya"
            for eleman in dersler:
                if eleman=="1":
                    ders.append("Temel Kimya")
                if eleman=="2":
                    ders.append("Organik Kimya")
                if eleman=="3":
                    ders.append("Elektro Kimya")
        ekle=FenEdebiyat(numara,isim,bölüm,ders)
        liste2.append(ekle)
    return liste,liste2
            
def Sözlük():
    dosya=open("Bilgiler.txt")
    içerik=dosya.readline()
    müh=[]
    fef=[]
    sözlük={}
    while içerik!="":
        liste=içerik.split()
        if liste[2]=="1":
            müh.append(liste[0])
            müh.append(liste[1])
            müh.append(liste[3])
            müh.append(liste[4])
        else:
            fef.append(liste[0])
            fef.append(liste[1])
            fef.append(liste[3])
            fef.append(liste[4])
        içerik=dosya.readline()
    sözlük["Mühendislik"]=müh
    sözlük["FenEdebiyat"]=fef
    dosya.close()
    return sözlük

def ÖğrenciGöster(liste,liste2):
    print("Mühendislik için 1'i, Fen-Edebiyat için 2'yi girin")
    seçim=int(input("Seçim: "))
    if seçim==1:
        print("Bilgisayar Mühendisliği için 1'i, Makine Mühendisliği için 2'yi girin")
        seçim2=int(input("Seçim: "))
        if seçim2==1:
            for i in range(len(liste)):
                bil=liste[i]
                bil.bilgisayar()
        if seçim2==2:
            for i in range(len(liste)):
                mak=liste[i]
                mak.makine()
    if seçim==2:
        print("Fizik Bölümü için 1'i, Kimya Bölümü için 2'yi girin")
        seçim2=int(input("Seçim: "))
        if seçim2==1:
            for i in range(len(liste2)):
                fiz=liste2[i]
                fiz.fizik()
        if seçim2==2:
            for i in range(len(liste2)):
                kim=liste2[i]
                kim.kimya()

def ÖğrenciAra(liste,liste2):
    aranacak=input("Aranacak Kişinin Adı :")
    a=aranacak[0].upper()
    uz=len(aranacak)
    aranacak=a+aranacak[1:uz+1]
    liste3=liste+liste2
    sayaç=0
    for i in range(len(liste3)):
        bakılacak=liste3[i]
        eşleş=bakılacak.get_ad()
        if eşleş!=aranacak:
            sayaç=sayaç+1
        if eşleş==aranacak:
            liste=bakılacak.get_dersler()
            sayı=len(liste)
            if sayı==1:
                ders=liste[0]
            if sayı==2:
                ders=liste[0]+" , "+liste[1]
            if sayı==3:
                ders=liste[0]+" , "+liste[1]+" , "+liste[2]
            print("**************************************************************************")
            print("Numarası :",bakılacak.get_numara(),sep="")
            print("Bölümü :",bakılacak.get_bölüm(),sep="")
            print("Aldığı Dersler :",ders,sep="")
            print("**************************************************************************")
        if sayaç==len(liste3):
            print("Aradığınız İsimde Öğrenci Yok!")
    
def ÖğrenciEkle():
    dosya=open("bilgiler.txt","a")
    print("**************************************************************************")
    isim=input("Ekleyeceğiniz Kişinin İsmi :")
    a=isim[0].upper()
    uz=len(isim)
    isim=a+isim[1:uz+1]
    numara=input("Numarası :")
    fakülte=input("Fakültesi (müh. için 1/fef için 2) :")
    bölüm=input("Bölümü (1 yada 2 şeklinde giriniz) :")
    ders=input("Dersleri Giriniz (1-2-3 şeklinde) :")
    print("Not :Yeni Eklenen Kişilerle İşlem Yapabilmek İçin Programı Yeniden Başlatmanız Gerekir.")
    print("**************************************************************************") 
    dosya.write(numara+" "+isim+" "+fakülte+" "+bölüm+" "+ders+"\n")
    dosya.close()

def StajFormasyon(liste,liste2):
    isim=input("İsminiz :")
    a=isim[0].upper()
    uz=len(isim)
    isim=a+isim[1:uz+1]
    sayaç=0
    liste3=liste+liste2
    for i in range(len(liste3)):
        bakılacak=liste3[i]
        eşleş=bakılacak.get_ad()
        if eşleş!=isim:
            sayaç=sayaç+1
        if eşleş==isim:
            numara=bakılacak.get_numara()
            bölüm=bakılacak.get_bölüm()
            if bölüm=="Bilgisayar Mühendisliği" or bölüm=="Makine Mühendisliği":
                print("**************************************************************************")
                print(isim,"Adlı",numara,"Numaralı Öğrenci İçin :")
                bakılacak.stajYap()
            if bölüm=="Fizik" or bölüm=="Kimya":
                print("**************************************************************************")
                print(isim,"Adlı",numara,"Numaralı Öğrenci İçin :")
                bakılacak.formasyonAl()

        if sayaç==len(liste3):
            print("Aradığınız İsimde Öğrenci Yok!")
        
        
              

def SınavGir(liste,liste2):
    isim=input("Sınav Notu Girmek İstediğiniz Öğrenci :")
    a=isim[0].upper()
    uz=len(isim)
    isim=a+isim[1:uz+1]
    sayaç=0
    liste3=liste+liste2
    dersler=[]
    for i in range(len(liste3)):
        bakılacak=liste3[i]
        eşleş=bakılacak.get_ad()
        dersler=bakılacak.get_dersler()
        if eşleş!=isim:
            sayaç=sayaç+1
        if eşleş==isim:
            ders=int(input("Hangi Ders İçin Not Giriceksiniz (1-2-3 Şeklinde Yazınız) :"))
            if ders==1:
                vize=int(input("Vize Notu :"))
                final=int(input("Final Notu :"))
                print("Notlar Sisteme Girildi")
            if ders==2:
                vize=int(input("Vize Notu :"))
                final=int(input("Final Notu :"))
                print("Notlar Sisteme Girildi")
            if ders==3:
                vize=int(input("Vize Notu :"))
                final=int(input("Final Notu :"))
                print("Notlar Sisteme Girildi")
                
        if sayaç==len(liste3):
            print("Aradığınız İsimde Öğrenci Yok!")
    return ders,vize,final

def SınavGöster(ders,vize,final,liste,liste2):
    aranacak=input("Aranacak Kişinin Adı :")
    a=aranacak[0].upper()
    uz=len(aranacak)
    aranacak=a+aranacak[1:uz+1]
    liste3=liste+liste2
    sayaç=0
    for i in range(len(liste3)):
        bakılacak=liste3[i]
        eşleş=bakılacak.get_ad()
        if eşleş!=aranacak:
            sayaç=sayaç+1
        if eşleş==aranacak:
            dersim=int(input("hangi ders için sorgulamak istiyorsunuz (1-2-3) :"))
            if dersim==ders:
                print("vize :",vize)
                print("final :",final)
            else:
                print("Vize=G")
                print("Final=G                                                      G=Girilmemiş")
                       
        if sayaç==len(liste3):
            print("Aradığınız İsimde Öğrenci Yok!")  
    
    

def main():
    sözlük=Sözlük()
    liste,liste2=Nesne(sözlük)
    ders=0
    vize=0
    final=0
    devam="y"
    while devam=="y":
        print("1- Tüm Öğrenciler,2- Öğrenci Arama,3- Vize/Final Notu Girme,4- Yeni Öğrenci Ekleme,5- Formasyon/Staj Tarihleri,6- Sınav Sonuçları")
        seçim=int(input("Seçiminizi Giriniz :"))
        if seçim==1:
            ÖğrenciGöster(liste,liste2)
        if seçim==2:
            ÖğrenciAra(liste,liste2)
        if seçim==3:
            ders,vize,final=SınavGir(liste,liste2)
        if seçim==4:
            ÖğrenciEkle()
        if seçim==5:
            StajFormasyon(liste,liste2)
        if seçim==6:
            SınavGöster(ders,vize,final,liste,liste2)
            

        print()
        devam=input("Devam Etmek İstiyormusunuz (y/n) :")
main()


