##NOT : proje normalde jupyterLab da yapılmıstır oyuzden değerler print ile ekrana bastırılmamıstır.

import pandas as pd

from sklearn.model_selection import train_test_split, cross_val_score, cross_val_predict

import seaborn as sns
from sklearn import preprocessing
import numpy as np
import pandas as pd

#gerekli kütüphaneler programa dahil ediliyor.

autos = pd.read_csv('autos2.csv', sep = ",") #veri seti çağırılıyor.
autos.head() #veri setinin bas kismi goruntuleniyor.

df = autos.copy() #veri seti yedekleniyor.
df.head()

df.info() # veri seti hakkında bilgileri görüntülüyoruz.

df.dtypes #veri setindeki verilerin tiplerini gösterir.

df.tail(3)

df.columns #dataframedeki sutunları gösterir.

df.describe().T #verilerin özet bilgilerini gösterir.

df.nunique() #verideki sutunların eşsiz kayıtlarının sayısını gösterir.

""" veri setindeki boş kayıt varmı kontrolu yapılır."""
df.isnull().sum() 

df.isnull().sum().sum()

df.isnull().values.any()


#bağımlı değişken belirlenir. ve bu veri setinden çıkarılır.
X = df.drop("sdPrice", axis = 1)
y = df["sdPrice"]

#test ve eğitim setleri belirlenir.
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20, random_state= 42)


X_train.shape

y_train.shape

X_test.shape

y_test.shape

training = df.copy()

training.shape

#model kurulur.
import statsmodels.api as sm
lm = sm.OLS(y_train, X_train)

model = lm.fit() #model fit edilir.
model.summary()

model.summary().tables[1] #medelin sonuc bilgileri

#makine öğrenmesi alg lineer regresyon belirtilir.
from sklearn.linear_model import LinearRegression
lm = LinearRegression()
model = lm.fit(X_train, y_train) #test seti fit edilir.

model.intercept_

model.coef_

#kurulan modelin skoru belirlenir.
from sklearn.metrics import mean_squared_error, r2_score #hata kareleri 
rmse = np.sqrt(mean_squared_error(y_train, model.predict(X_train)))

rmse

rmse = np.sqrt(mean_squared_error(y_test, model.predict(X_test)))

rmse


X = df.drop('sdPrice', axis=1)
y = df["sdPrice"]
X_train, X_test, y_train, y_test = train_test_split(X, y, 
                                                    test_size=0.20, 
                                                    random_state=144)
lm = LinearRegression() 
model = lm.fit(X_train, y_train)

np.sqrt(mean_squared_error(y_train, model.predict(X_train)))

np.sqrt(mean_squared_error(y_test, model.predict(X_test)))

model.score(X_train, y_train)

cross_val_score(model, X_train, y_train, cv = 10, scoring = "r2").mean()

np.sqrt(-cross_val_score(model, 
                X_train, 
                y_train, 
                cv = 10, 
                scoring = "neg_mean_squared_error")).mean()

np.sqrt(-cross_val_score(model, 
                X_test, 
                y_test, 
                cv = 10, 
                scoring = "neg_mean_squared_error")).mean()
































