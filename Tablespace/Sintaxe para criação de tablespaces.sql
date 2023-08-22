-- Sintaxe para criação de tablespaces

-- Example
CREATE
[SMALLFILE/BIGFILE/TEMPORARY <GROUP> /UNDO <RETENTION>]
TABLESPACE [tablespace_name]
DATAFILE/TEMPFILE [nome_caminho_arq_datafile01]
SIZE [INTEGER <tamanho>]
REUSE
AUTOEXTEND { [OFF/ON (NEXT <INTEGER tamanho> MAXSIZE
<INTEGER tamanho>) / UNLIMITED ] }
BLOCKSIZE <INTEGER 2k/4k/8k/16k/32k>
LOGGING | NOLOGGING
ENCRYPTION <tablespace_encryption_spec>
ONLINE | OFFLINE
EXTENT MANAGEMENT [LOCAL (AUTOALLOCATE/UNIFORM
<integer tamanho>)]
SEGMENT SPACE MANAGEMENT [AUTO | MANUAL]
FLASHBACK [ON | OFF]


-- Example prático
CREATE TABLESPACE minha_tablespace
DATAFILE '/caminho/para/o/arquivo.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 10M
MAXSIZE UNLIMITED;

- *minha_tablespace* é o nome da tablespace que você deseja criar.
- *`'/caminho/para/o/arquivo.dbf'`* é o caminho para o arquivo de dados da tablespace.
- *`SIZE 100M`* define o tamanho inicial da tablespace como 100 megabytes.
- *`AUTOEXTEND ON`* permite que o arquivo de dados da tablespace seja automaticamente estendido quando necessário.
- *`NEXT 10M`*especifica o tamanho da próxima extensão em 10 megabytes.
- *`MAXSIZE UNLIMITED`* define que a tablespace pode crescer até o tamanho máximo ilimitado.
