// reading data from csv that is uploaded to git repo in the raw format

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/riteshchhetri10/Skill_recommender_Graph_DB/main/Consolidated%20skill%20assessment%20-%20Sheet1-2.csv" AS row WITH row WHERE row.Employee_id is not null

// create nodes for each category

// employee nodes
MERGE (E:Employee_id {EID : row.Employee_id, YOE : row.YOE})

// Designation nodes
MERGE (D:Designation {Designation: row.Designation})

//Skill nodes 
MERGE (S1:Skill1 {Skill1: row.Skill1})
MERGE (S2:Skill2 {Skill2: row.Skill2})
MERGE (S3:Skill3 {Skill3: row.Skill3})
MERGE (S4:Skill4 {Skill4: row.Skill4})
MERGE (S5:Skill5 {Skill5: row.Skill5})
MERGE (S6:Skill6 {Skill6: row.Skill6})
MERGE (S7:Skill7 {Skill7: row.Skill7})
MERGE (S8:Skill8 {Skill8: row.Skill8})
MERGE (S9:Skill9 {Skill9: row.Skill9})
MERGE (S10:Skill10 {Skill10: row.Skill10})
MERGE (S11:Skill11 {Skill11: row.Skill11})



//Broader skill segment classification nodes
MERGE (C1:Classification1 {C1: row.Classification1})
MERGE (C2:Classification2 {C2: row.Classification2})
MERGE (C3:Classification1 {C3: row.Classification3})
MERGE (C4:Classification1 {C4: row.Classification4})
MERGE (C5:Classification1 {C5: row.Classification5})
MERGE (C6:Classification1 {C6: row.Classification6})
MERGE (C7:Classification1 {C7: row.Classification7})
MERGE (C8:Classification1 {C8: row.Classification8})
MERGE (C9:Classification1 {C9: row.Classification9})
MERGE (C10:Classification1 {C10: row.Classification10})
MERGE (C11:Classification1 {C11: row.Classification11})



// creating relationships for each category 

//employee and designation relationship
MERGE (E)-[:DESIGNATED_AS]->(D)

//employee and skill relationship ( rating embedded in the weight of the edge)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating1}]->(S1)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating2}]->(S2)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating3}]->(S3)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating4}]->(S4)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating5}]->(S5)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating6}]->(S6)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating7}]->(S7)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating8}]->(S8)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating9}]->(S9)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating10}]->(S10)
MERGE (E)-[:Skilled_in{Skill_rating:row.Rating11}]->(S11)


//skill and broader classification relationship
MERGE (S1)-[:Classified_as]->(C1)
MERGE (S2)-[:Classified_as]->(C2)
MERGE (S3)-[:Classified_as]->(C3)
MERGE (S4)-[:Classified_as]->(C4)
MERGE (S5)-[:Classified_as]->(C5)
MERGE (S6)-[:Classified_as]->(C6)
MERGE (S7)-[:Classified_as]->(C7)
MERGE (S8)-[:Classified_as]->(C8)
MERGE (S9)-[:Classified_as]->(C9)
MERGE (S10)-[:Classified_as]->(C10)
MERGE (S11)-[:Classified_as]->(C11)




