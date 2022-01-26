# sap-process-order-confirmation-sql  
sap-process-order-confirmation-sql は、主にエッジアプリケーションにおいて、SAPと連携された プロセス指図確認を保存するSQLテーブルを作成するためのレポジトリです。  
sap-process-order-confirmation-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-process-order-confirmation-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_PROC_ORDER_CONFIRMATIO_2_SRV_0001/overview    
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル
sap-process-order-confirmation-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* sap-process-order-confirmation-sql-batch-characteristics-data.sql（SAP プロセス指図確認 - ロット特性）
* sap-process-order-confirmation-sql-confirmation-data.sql（SAP プロセス指図確認 - 確認）
* sap-process-order-confirmation-sql-material-movements-data.sql（SAP プロセス指図確認 - 入出庫）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。