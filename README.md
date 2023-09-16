# OceanBase technical demo

Documentation Reference: <br>
https://hub.docker.com/r/oceanbase/oceanbase-ce <br>
https://github.com/oceanbase/oceanbase

To download the Docker image of OceanBase: <br>

    docker pull obpilot/oceanbase-ce

When successful you will see: <br>
_Status: Downloaded newer image for oceanbase/oceanbase-ce:latest <br>_

To start the Docker container instance, run this:

    docker run -itd -m 10G -p 2883:2883 --name oceanbase-ce obpilot/oceanbase-ce:latest

To execute the container in the Bash environment:

    docker exec -it oceanbase-ce bash

(Skip this - optional) To execute the container in the SQL environment:

    docker exec -it oceanbase-ce2 ob-mysql sys

To start the demo environment (Bash command):

    obd cluster list
    obd cluster start obdemo

After this, connect to the OceanBase database using DBeaver. <br>
Reference [link](https://youtu.be/Yanz-Brvd04).

Go to DBeaver -> Database -> New Database Connection -> MySQL -> next
* **Server Host**: 127.0.0.1
* **Port**: 2883
* **Database**: OceanBase
* **Username**: root
* **Password**: rootPWD123
* Click on **Test Connection** -> OK -> Finish
* SQL Editor -> Open SQL Script -> CREATE DATABASE jamesdatabase;
* (right-click) Databases -> Refresh
* (right-click) jamesdatabase -> Set as default

Refer to [oceanbase_technical_demo.sql](https://github.com/JNYH/OceanBase_technical_demo/blob/main/oceanbase_technical_demo.sql) for more Data Definition Language (DDL) statements.

---
Refer to my YouTube video for the above demo in full: https://youtu.be/1G76Mk30sik
