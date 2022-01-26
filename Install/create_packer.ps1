yc config list

$SVC_ACCT="her"
$FOLDER_ID="b1g5tqkc521bb5k7nqc9"

yc iam service-account create --name $SVC_ACCT --folder-id $FOLDER_ID

yc iam service-account get $SVC_ACCT
$ACCT_ID="ajete86448t6lhj21ka8"

yc resource-manager folder add-access-binding --id $FOLDER_ID --role editor --service-account-id $ACCT_ID


yc iam key create --service-account-id $ACCT_ID --output key.json
yc iam key create --service-account-id ajete86448t6lhj21ka8 --output key.json


packer build  ./ubuntu16.json -var-file=variables.json

packer build    template.json