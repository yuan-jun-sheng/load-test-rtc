To scale deployment:
kubectl scale deployment.v1.apps/rtc-load-test --replicas=5 -n test
To change rtc server to be tested:
Modify SERVER_URL value in deployment.yaml
You can also modify interval and connection attempts in deployment.yaml
