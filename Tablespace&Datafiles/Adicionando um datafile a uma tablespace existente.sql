ALTER TABLESPACE nome_da_tablespace
ADD DATAFILE '/caminho/para/o/novo_arquivo.dbf'
SIZE 100M  -- Tamanho inicial
AUTOEXTEND ON NEXT 10M  -- Próxima extensão
MAXSIZE UNLIMITED;  -- Tamanho máximo (ou defina um valor máximo)
