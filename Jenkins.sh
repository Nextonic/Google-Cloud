//Set Zone
gcloud config set compute/zone us-east1-d

//Clone Kubernetes repository
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes.git

//Create kubernetes cluseter
gcloud container clusters create jenkins-cd \
--num-nodes 2 \
--machine-type n1-standard-2 \
--scopes "https://www.googleapis.com/auth/source.read_write,cloud-platform"
