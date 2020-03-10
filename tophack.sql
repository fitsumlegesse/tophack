SELECT HackVid.userID, Users.lastName, Users.lastName, Users.userCountry, HackVid.lastUpdated
FROM HackVid
INNER JOIN Users ON HackVid.userID = Users.userID;

SELECT HackArt.hackID, categories.catDes, HackArt.hackLang 
From HackArt 
Inner JOIN categories ON HackArt.catID = categories.catID;
