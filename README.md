# Hygiene Center Project
 A relational database with focus on database design and SQL queries. Data is fictitious.
## Introdruction 

This project models a hygine center that support people in need by providing services and articles. 

With this system the hygiene center can manage their resources, understand patterns and improve their services.
## Database Structure

entities included like: 
- visitors : people who use the services of the hygiene center 
- articles & articles giveaway
- services & service use
- volunteers & workplan

for a closer look, see [creation.sql](/create.sql)








## Example Queries 


1. **Total visitors**

How many visitors have already visit the hygiene Center? 

```sql
SELECT COUNT(*) AS total_visitors FROM visitor;
``` 



**importance?** 
- do we have enough volunteers? 
- is the hygiene Center a successful idea? 

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
- does the hygiene center need to find more donors? 
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

5. **max, min, average birthyear of visitors**

which year was the youngest, oldest and average visitor born?
```sql
SELECT MIN(birth_year), MAX(birth_year), AVG(birth_year)
FROM visitor;
```

**importance?** 
- adjust different offers to different age groups?



--- 
you find more queries [here](/queries.sql)

## Conclusion 

This project implements a relational database for a hygiene center, focusing on efficient data organization and data analysis. The system includes the management of visitors, volunteers, services and articles and provides a foundation for operations. 

The SQL queries provide insights such as service usage patterns, resources and volunteers workload, which supports decision-making and improving overall efficiency of the hygiene center. 

This database provides a solid foundation, but can be enhanced by adding more realistic constraints and rules, as limiting the number of services for each visitor and restricting the quantity of articles given. 

Future improvements may also include advanced queries. 

Overall, this project shows how database systems can be used to support and optimize real-life services. 

---
