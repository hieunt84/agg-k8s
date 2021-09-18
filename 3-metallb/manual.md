### Manual deployment
- Step 1: config in values.yaml
```
configInline:
  address-pools:
   - name: default
     protocol: layer2
     addresses:
     - 192.168.1.10-192.168.1.20
```

- Step 2: create namespace metallb-system
```
kubectl create ns metallb-system
```

- Step 3: install
```
helm install metallb metallb/metallb -n metallb-system -f ./values.yaml
``` 