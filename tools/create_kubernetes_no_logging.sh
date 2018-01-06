gcloud beta container clusters create cluster-1 --machine-type=g1-small --num-nodes=2 --cluster-version=1.8.4-gke.1 --disk-size=20  --enable-legacy-authorization --disable-addons=KubernetesDashboard --no-enable-cloud-logging --no-enable-cloud-monitoring

gcloud container clusters get-credentials cluster-1 --project infra-180320
