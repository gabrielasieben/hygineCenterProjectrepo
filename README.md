# Hygine Center Project
 this project implements a relational database for managing a hygine Center. 
 Focus on database design and SQL queries.

data is fictitious.
## Intodruction 

This Database is designed to manage and follow the activies around the hygine center. The relational database provide an easy reporting and an efficient management role.

entities included like: 
- visitors : people who use the services of the hygine center 
- articles & articles giveaway
- services & service use
- volunteers & workplan

for a closer look, see [creation.sql](/create.sql)

with this system the hygine Center can manage ther resources, understand patterns and improve their services.






## Queries 


1. **Total visitors**

How many visitors have already visit the hygine Center? 

```sql
SELECT COUNT(*) AS total_visitors FROM visitor;
``` 



**importance?** 
- do we have enough volunteers? 
- is the hygine Center a sucessful idea? 

---

2. **service usage**

how much was each service used? 
 ```sql
 SELECT COUNT(use_id) AS total_use, service_id 
FROM service_use
GROUP BY service_id
ORDER BY total_use DESC;
```

**importance?** 
- should the services be expand? 

---
3. **most given articles**

which article is the most popular one?
```sql
SELECT COUNT(ag.out_id) AS total_out, a.name
FROM article_giveaway ag
JOIN article a ON ag.article_id = a.article_id
GROUP BY a.article_id, a.name;
```

**importance?** 
- does the hygine center need to find more donors? 
- which article is the most popular? 
- which article have to be refill sooner then others? 


4. **average of volunteers working per day** 

how many volunteers have been working each day?
```sql
SELECT AVG(dailyWorkers) AS personPerDay
FROM (
SELECT COUNT(volunteer_id) AS dailyWorkers, date 
FROM workplan 
GROUP BY date) sub;
```

**importance?** 
- more focus on finding new volunteers?
- overloaded? 

5. **max, min, average age of visitors**

what age is the youngest, oldest and average visitor?
```sql
SELECT MIN(birth_year), MAX(birth_year), AVG(birth_year)
FROM visitor;
```

**importance?** 
- adjust diffrent offers to diffrent age groups?



--- 
you find more queries [here](/queries.sql)

## Conclusion 
```
this project is a superficial database of a hygine center. As in my own experience in volunteering in a hygine Centers, hygine Centers have stricter rules when it comes to articles giveaway or services. For example max of service use, or numbers of articles to take in one day for each visitor.  
```
Next step in this project is to implement constrains in articles giveaway and max in service use...

---
