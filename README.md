## akepman_infra
akepman Infra repository

# Выполнено ДЗ Travis 1
 - [+] Основное ДЗ
 - [+] Задание дополнительное

## В процессе сделано:
 - ДЗ

## Как запустить проект:
 - Нужно сделать push

## Как проверить работоспособность:
 - выполнена проверка Action

## PR checklist
 - [+] Выставил label с темой домашнего задания


# Выполнено ДЗ № 2  Yandex Cloud bastion

 - [+] Основное ДЗ
 - [+] Задание с сертификатом

## В процессе сделано:

```
OS = Windows 10
Shell = Powershell
```
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
## Как проверить работоспособность:
 -  перейти по ссылке https://vpn.kepman.ru/  так как Action выполнился я удалил ВМ

#### help link
https://docs.pritunl.com/docs/connecting

## PR checklist
 - [+] Выставил label с темой домашнего задания
