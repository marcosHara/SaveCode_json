#29/05/2026

SELECT * FROM countryinfo;

SELECT doc FROM countryinfo;

SELECT doc FROM countryinfo WHERE _id = "BRA";

SELECT JSON_KEYS(doc) FROM countryinfo WHERE _id = "BRA";

# Para acessar o json dentro de um json:
SELECT JSON_KEYS(doc, "$.geography") FROM countryinfo WHERE _id = "BRA";

SELECT JSON_EXTRACT(doc, "$.IndepYear") FROM countryinfo WHERE _id = "USA";

SELECT JSON_EXTRACT(doc, "$.government.HeadOfState") FROM countryinfo WHERE _id = "USA";

SELECT JSON_EXTRACT(doc, "$.demographics.Population") FROM countryinfo WHERE _id = "USA";



# Exiba uma tabela com a população total e a média 
# da expectativa de vida de cada continente para os países
# que são monarquias. Agrupe e ordene os dados exibidos 
SELECT JSON_EXTRACT(doc, "$geography.continent") as Continente,
SUM (JSON_EXTRACT(doc, "$demographics.Population")) as Populacao,
AVG (JSON_EXTRACT(doc, "$demographics.LifeExpectancy")) as MedExpec;
SELECT Populacao, MedExpec FROM Continente;
