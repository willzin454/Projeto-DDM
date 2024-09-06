const criarTabelas = [
  '''
    CREATE TABLE cliente(
      id INTEGER NOT NULL PRIMARY KEY
      ,nome VARCHAR(200) NOT NULL
      ,cpf CHAR(14) NOT NULL UNIQUE
      ,email VARCHAR(200) NOT NULL
    )
  '''
];

const inserirRegistros = [
  'INSERT INTO cliente (nome,cpf,email) VALUES ("JOAQUIM","391.650.590-42","joaquin@gmail.com")',
  'INSERT INTO cliente (nome,cpf,email) VALUES ("MARIANA","724.876.030-70","mariana@gmail.com")',
  'INSERT INTO cliente (nome,cpf,email) VALUES ("ROBERTO","959.358.840-03","roberto@gmail.com")'
];