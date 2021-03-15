# ansible/aws
ansible with AWS

Set your own keys.yaml file with access, secret key and region.
Ex:
```
---
AWS_ACCESS_KEY_ID:  asdasdasdas
AWS_SECRET_ACCESS_KEY_ID: asdasdasdad
AWS_REGION: asdasdasd
```
Also, set an inventory, such as:
```
[webservers]
web01		ansible_host=ip-172-31-33-87.us-east-2.compute.internal
web02		ansible_host=ip-172-31-37-159.us-east-2.compute.internal
web03		ansible_host=ip-172-31-44-194.us-east-2.compute.internal
web04		ansible_host=ip-172-31-37-61.us-east-2.compute.internal

[db]
db01		ansible_host=ip-172-31-37-90.us-east-2.compute.internal
```
