## akepman_infra
akepman Infra repository
```
OS = Windows 10
Shell = Powershell
```
### Yandex Cloud 5
#### Task1 - One line
`ssh -A -t appuser@51.250.4.101 ssh appuser@10.128.0.34`
#### Task2 - ssh someinternalhost
Edit file and add text  - C:\Users\kepmanaa\.ssh\config
```
Host someinternalhost
  User appuser
  ProxyCommand ssh appuser@51.250.4.101 nc 10.128.0.34 22
```
run
`ssh someinternalhost`

#### Task3 - vpn
```
bastion_IP = 51.250.4.101
someinternalhost_IP = 10.128.0.34
```
https://vpn.kepman.ru/

#### help link
https://docs.pritunl.com/docs/connecting

#### Task4 - yandex
testapp_IP = 51.250.4.163
testapp_port = 9292
