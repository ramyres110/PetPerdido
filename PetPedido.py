#!\bin\python3
# _-_ coding: utf-8 _-_
"""
Pet:
- Especie: cachorro, gato, passaro, peixe, etc.
- Raça: vira-lata, siamês, canário, beta, etc.
- Cor
- Sexo
- Peso
- Nome do proprietário
- Telefone do proprietário
- Endereço do proprietário

Entidade:
* Animal
    - Id Int
    - Especie Varchar(50)
    - Raca Varchar(50)
    - Cor Varchar(50)
    - Sexo Char(1)
    - Peso Float
    - # Proprietario Int
* Proprietário
    - Id Int
    - Nome Varchar(50)
    - Telefone Varchar(15)
    - Endereco Varchar(100)

Ferramentas:
* VSCode
* SQLiteStudio <https://sqlitestudio.pl/>

Funcionalidades:
- Cadastrar pet perdido
- Pesquisar pet perdido
- Listar pets perdidos
- Exportar lista em CSV
"""

import sqlite3

def conectar():
    conn = sqlite3.connect('database.db')
    return conn

def listar_pets():
    conn = conectar()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM animal')
    pets = cursor.fetchall()
    
    #Todo: Exibir os pets
    
    conn.close()
    return pets

if __name__ == '__main__':
    listar_pets()