export ZONE=us-west2-a 
export THEDATE=`date +%y%m%d%H`
export PROJECT_ID=`gcloud config get-value project`
gcloud container clusters get-credentials se-rooney-$THEDATE \
    --zone $ZONE \
    --project $PROJECT_ID
