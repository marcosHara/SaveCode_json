CREATE DATABASE JSON_DATABASE;

CREATE TABLE dados_json(
json char(250)
);

INSERT INTO dados_json VALUES (
'{
"nome": "Isquilo",
"sobrenome": "Paraquedas",
"idade": 67,
"ID": "6776"
}'
);
SELECT * FROM dados_json;

CREATE TABLE json_dados(
teste_json json
);

INSERT INTO json_dados VALUES (
'{
"nome": "Else",
"sobrenome": "Ocean",
"idade": 67,
"ID": "6776"
}'
);

SELECT * FROM json_dados;