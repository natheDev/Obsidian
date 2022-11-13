### Create Table
```sql
CREATE TABLE `membership` (
 		`membershipID` CHAR(5) CHECK(LENGTH(`membershipID`) = 5),
    	`customerID` CHAR(5) NOT NULL,
    	`startMembership` DATE NOT NULL,
    	`membershipType` VARCHAR(20) NOT NULL CHECK(`membershipType` IN("bronze", "silver", "gold")),
    	PRIMARY KEY(`membershipID`),
   		FOREIGN KEY(`customerID`) REFERENCES `customer` (`CustomerID`) ON UPDATE CASCADE
)
```

### Insert
```sql
INSERT INTO `membership`(membershipID, customerID, startMembership, membershipType)
VALUES("ME001","CU001","2022-07-05","gold")
```

### Uppercase
```sql
SELECT dt.DogTypeName, UPPER(d.DogSize) AS `Dog Size`, dt.DogTypeID
FROM dog d JOIN dogtype dt 
ON d.DogTypeID = dt.DogTypeID 
WHERE dt.DogTypeID LIKE 'DT001'
```

### Insert
```sql
SELECT th.TransactionID, cs.CustomerName, cs.CustomerEmail, dog.DogID
FROM transactionheader th JOIN customer cs  JOIN transactiondetail td JOIN dog
ON th.TransactionID = td.TransactionID AND dog.DogID = td.DogID AND cs.CustomerID = th.CustomerID
WHERE YEAR(th.TransactionDate) = 2022 AND CHAR_LENGTH(cs.CustomerName) > 5
```

### Like
```sql
UPDATE dogtype dt
JOIN dog JOIN transactiondetail td
ON dt.DogTypeID = dog.DogTypeID and td.DogID = dog.DogID

SET dt.DogTypeName = "Basset Hound"
WHERE dog.DogID LIKE "DO010"

```