export PROJECT_ID=`gcloud config get-value project` && \
  export M_TYPE=n1-standard-2 && \
  export ZONE=us-west2-a && \
  export THEDATE=`date +%y%m%d%H%M%S`
  export CLUSTER_NAME=se-rooney-$THEDATE && \
  gcloud services enable container.googleapis.com && \
  gcloud container clusters create $CLUSTER_NAME \
  --cluster-version latest \
  --machine-type=$M_TYPE \
  --num-nodes 3 \
  --zone $ZONE \
  --project $PROJECT_ID \
  --enable-network-policy
