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


# Выполнено ДЗ №3 Yandex cloud-testapp

 - [+] Основное ДЗ
 - [+] Задание дополнительное

## В процессе сделано:
 create-vm.bat - делат VM
 deploy.sh - ставим целевое приложение Monolith
 install_mongodb.sh - ставим монго
 install_ruby.sh - ставим руби
 startup_script.sh - ставим все вместе
 cloud-config.yaml - файл первичной установки для YC

```
testapp_IP = 51.250.4.233
testapp_port = 9292
```
## Как запустить проект:
 - http://51.250.4.233:9292/

## Как проверить работоспособность:
 - http://51.250.4.233:9292/

## PR checklist
 - [+] Выставил label с темой домашнего задания

# Выполнено ДЗ № 4 Packer

 - [+] Основное ДЗ
 - [-] Задание дополнительное не выполнил, а очень нужно было, на работе сделаю красиво  bake-образа + powershell по созаднию

## В процессе сделано:
 - установил Packer
 - проверил версию
 - дошел до создания и xyяk ошибка - error: code = ResourceExhausted desc = Quota limit vpc.networks.count exceeded
   пришлось добавить   	    "subnet_id": "e9b32s46j6f7pk52jod9",
   подключаюсь ssh yc-user@62.84.125.69
   поставил
   проверил http://62.84.125.69:9292/
   сделал переменные packer build  ./ubuntu16.json -var-file=variables.json

## Отзыв по отусу - как обычно старое ДЗ ссылки есть битые, не очень так уважительно к ученикам. Лозунг чем хуже ДЗ тем больше они получат опыта

## Как запустить проект:
 - стартовать ВМ

## Как проверить работоспособность:
 - http://62.84.125.69:9292/

## PR checklist
 - [+] Выставил label с темой домашнего задания
