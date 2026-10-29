# 🐬 MySQL StatefulSet on Kubernetes

![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

Runs **MySQL 8.0** as a **StatefulSet** with stable network identities and persistent storage per replica.

## 📦 Resources (`mysql/`)

| File | Resource |
|---|---|
| `stateful.yml` | StatefulSet, 3 replicas, `mysql:8.0`, 1Gi volume per pod via `volumeClaimTemplates` |
| `service.yml` | **Headless** Service (`clusterIP: None`) for stable DNS per pod |
| `configMap.yml` | Database configuration |
| `secert.yml` | Root password as a Kubernetes Secret |

## 🚀 Usage

```bash
kubectl apply -f mysql/
kubectl get statefulset,pods,pvc
kubectl exec -it <mysql-pod-0> -- mysql -u root -p
```

## 💡 Why StatefulSet?

Unlike a Deployment, each pod gets a **stable name** (`mysql-0`, `mysql-1`, …), **stable DNS** through the headless service, and its **own persistent volume** that survives rescheduling.

> In real environments, keep secrets out of Git (Sealed Secrets / External Secrets Operator).

---

## 👤 Author

**Abdur Rehman** · DevSecOps Engineer · Founder of [ARTechOps](https://artechops.com)

[LinkedIn](https://www.linkedin.com/in/muhamad-abdur-rehman-81777b366/) · [GitHub](https://github.com/abdur-rehman-tech) · [artechops.com](https://artechops.com)
