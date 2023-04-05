import pandas as pd
from matplotlib import pyplot as plt

df = pd.read_csv("insurance_data.csv")
df.head()
plt.scatter(df.age,df.bought_insurance,marker='+',color='red')

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test =train_test_split(df[['age']],df.bought_insurance,train_size=0.8)
X_test
from sklearn.linear_model import LogisticRegression
model = LogisticRegression()
model.fit(X_train, y_train)
X_test

y_predicted = model.predict(X_test)
print(y_predicted)

model.predict_proba(X_test)
print(model.predict_proba(X_test))

model.score(X_test,y_test)
print(model.score(X_test,y_test))

y_predicted
X_test
print(model.coef_)
print(model.intercept_)

import math
def sigmoid(x):
    return 1 / (1 + math.exp(-x))
def prediction_function(age):
    z = 0.042 * age - 1.53 # 0.04150133 ~ 0.042 and -1.52726963 ~ -1.53
    y = sigmoid(z)
    return y

def Check(age):
    op=prediction_function(age)
    if op<0.5:
        print(op,"is less than 0.5 which means person with",age,"age will not buy insurance")
    else:
        print(op,"is greater than 0.5 which means person with",age,"age will buy insurance")

Check(35)
Check(50)
