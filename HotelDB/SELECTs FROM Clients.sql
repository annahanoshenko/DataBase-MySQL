SELECT * FROM Clients
SELECT clientName, clientNumber FROM Clients
SELECT clientName, clientNumber FROM Clients WHERE clientName = 'Viktor Udich'
SELECT clientName, clientNumber FROM Clients WHERE clientName LIKE 'A%'
SELECT clientName, clientNumber FROM Clients WHERE clientName LIKE '%a%'
SELECT clientName, clientNumber FROM Clients WHERE clientName LIKE '%a'

SELECT clientName, clientNumber FROM Clients WHERE clientNumber LIKE '%50%'
SELECT clientName, clientNumber FROM Clients WHERE clientNumber > 12
SELECT clientName, clientNumber FROM Clients WHERE clientNumber <= 50000000000
SELECT clientName, clientNumber FROM Clients WHERE clientNumber < 500000000 AND clientNumber > 50000000000
SELECT clientName, clientNumber FROM Clients WHERE clientNumber = 5059595 OR clientNumber = 38954656
SELECT  clientName, clientNumber FROM Clients WHERE clientNumber <> 5059595  
