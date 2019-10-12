import pandas as pd 
import numpy as np
from matplotlib import pyplot as plt
from sklearn.cluster import KMeans

data = pd.read_csv('Mall_Customers.csv' )

x = data.iloc[:,[3,4]].values

KM = KMeans(n_clusters=5,init='k-means++',max_iter=300,n_init=1,random_state=0)
y_kmeans = KM.fit_predict(x)

plt.scatter(x[y_kmeans == 0,0],x[y_kmeans == 0,1],s = 40 , c = 'red', label = 'Cluster 1')
plt.scatter(x[y_kmeans == 1,0],x[y_kmeans == 1,1],s = 40 , c = 'blue', label = 'Cluster 2')
plt.scatter(x[y_kmeans == 2,0],x[y_kmeans == 2,1],s = 40 , c = 'green', label = 'Cluster 3')
plt.scatter(x[y_kmeans == 3,0],x[y_kmeans == 3,1],s = 40 , c = 'orange', label = 'Cluster 4')
plt.scatter(x[y_kmeans == 4,0],x[y_kmeans == 4,1],s = 40 , c = 'cyan', label = 'Cluster 5')
plt.scatter(KM.cluster_centers_[:,0],KM.cluster_centers_[:,1],s = 60,c = 'black', label = 'Centroids')
plt.ylabel('Spending Score (1-100)')
plt.xlabel('Annual Income (k$)')
plt.title('Clusters of clients')
plt.legend(loc = 'best')
plt.savefig('cluster.png')
#plt.show()


data['Cluster'] = y_kmeans


def namming(col):
    val = col
    if val == 0:
        return "Un-reliable"
    elif val == 1 :
        return "Potential Customers"
    elif val == 2 :
        return "Champions"
    elif val == 3 :
        return "Budget Cust"
    elif val == 4 :
        return "inactive"

data['Segments']=data['Cluster'].apply(namming)
data.drop(['Cluster'],axis = 1, inplace = True)
print(data)