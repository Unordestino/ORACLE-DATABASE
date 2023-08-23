- Excluindo tablespace/datafile
    - **Explicando a semântica da sintaxe**
        
        **DROP TABLESPACE <tablespace_name>**
        ▪ O comando exclui a tablespace caso nenhum objeto esteja
             associado a ela, eliminando assim a referência lógica e mantendo
             a estrutura física (datafile).
        
    - **INCLUDING CONTENTS**
        
        ▪ O comando adicional **INCLUDING CONTENTS** exclui a
             tablespace e os objetos associados a ela, eliminando a referência
             lógica e mantendo a estrutura física (datafile).
        
    - **AND DATAFILES**
        
        ▪ O comando adicional AND DATAFILES exclui a tablespace e os
        objetos associados a ela, eliminando a referência lógica e também
        a estrutura física (datafile).
        
    - **CASCADE CONSTRAINTS**
        
        ▪O comando adicional CASCADE CONSTRAINTS exclui todas as
            restrições de integridade referencial de tabelas fora da tablespace
            que se referem a chaves primárias e exclusivas de tabelas dentro
            da tablespace.
        ▪ Se você omitir essa cláusula e essas restrições de integridade
             referencial existirem, o Oracle Database retornará um erro e não
             eliminará a tablespace.


-- DROP TABLESPACE 
DROP TABLESPACE TBS_BASE01_EXCLUIR
-- INCLUDING CONTENTS
DROP TABLESPACE TBS_BASE01_EXCLUIR INCLUDING
CONTENTS;
-- AND DATAFILES
DROP TABLESPACE TBS_BASE01_EXCLUIR INCLUDING
CONTENTS AND DATAFILES;
-- CASCADE CONSTRAINTS
DROP TABLESPACE TBS_BASE01_EXCLUIR INCLUDING
CONTENTS AND DATAFILES CASCADE CONSTRAINTS;