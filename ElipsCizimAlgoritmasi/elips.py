#ELİPS ÇİZİM ALGORİTMASI

rx=int(input("rx değerini giriniz :"))
ry=int(input("ry değerini giriniz :"))
print("*****************************")
if rx>0 and ry>0:
    print("1.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("2.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("3.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("4.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
if rx<0 and ry<0:
    rx=rx*-1
    ry=ry*-1
    print("1.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("2.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("3.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("4.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    
    
if rx<0 and ry>0:
    rx=rx*-1
    print("1.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("2.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("3.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("4.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
if rx>0 and ry<0:
    ry=ry*-1
    print("1.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("2.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",-y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",-y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("3.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",-x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",-x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)

    print("4.Çeyrekteki Noktalar :")
    x=0
    y=ry
    d1=(ry**2)-((rx**2)*ry)+((rx**2)/4)
    Dx=(2*(ry**2)*x)
    Dy=(2*(rx**2)*y)
    while Dx<Dy:
        print("(",x,",",y,")",sep="")
        if d1<0:
            x=x+1
            y=y
            Dx=Dx+(2*(ry**2))
            d1+=Dx+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))+(ry**2)
        else:
            x+=1
            y-=1
            Dx+=2*(ry**2)
            Dy-=2*(rx**2)
            d1+=Dx-Dy+(ry**2)
            d1+=(2*(ry**2)*x)+(2*(ry**2))-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
    d2=((ry**2)*((x+(1/2))**2))+((rx**2)*((y-1)**2))-((rx**2)*(ry**2))
    while y>0:
        print("(",x,",",y,")",sep="")
        if d2>0:
            x=x
            y-=1
            Dy-=(2*(rx**2))
            d2=d2-Dy+(rx**2)
            d2=d2-((2*(rx**2)*y)-(2*(rx**2)))+(rx**2)
        else:
            x+=1
            y-=1
            Dy-=(2*(rx**2))
            Dx+=(2*(ry**2))
            d2=d2+Dx-Dy+(rx**2)
            d2=d2+(2*(ry**2))+(ry**2)-((2*(rx**2)*y)-(2*(rx**2)))+(ry**2)
            
x1=1
x2=1
x3=1
if rx<0:
    rx=rx*-1
if ry<0:
    ry=ry*-1
xx=""
if rx>=ry:
    xx=rx
if ry>rx:
    xx=ry
x2=x2*(xx)
x3=x3*(rx+ry)
import turtle
ekran=turtle.Screen()
ekran.bgcolor("black")
ekran.title("Elips Çizen Program")
çiz=turtle.Turtle(shape="circle")
çiz.shapesize(x1,x2,x3)
çiz.color("white")

