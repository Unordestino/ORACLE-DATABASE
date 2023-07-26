CREATE USER brito identified by "P@ssword" account unlock container=current;


--Agora vamos dar permissão de conexão no PDB conectado
GRANT CONNECT TO brito CONTAINER=current;








----------------------------------