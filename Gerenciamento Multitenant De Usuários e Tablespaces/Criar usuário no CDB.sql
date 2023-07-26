--Criar um user no CDB que gerencia todos os PDBS com o parametro "CONTAINER=ALL"
CREATE USER c##brito IDENTIFIED BY "P@ssword" ACCOUNT UNLOCK CONTAINER=ALL;

--Agora vamos dar permissão de conexão em todos os PDBS
GRANT CONNECT TO c##brito CONTAIRNER=ALL;







----------------------------------