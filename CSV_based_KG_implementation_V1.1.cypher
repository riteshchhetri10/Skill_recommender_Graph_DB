// reading data from csv that is uploaded to git repo in the raw format

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/riteshchhetri10/Skill_recommender_Graph_DB/main/Consolidated%20skill%20assessment%20-%20Sheet1-2.csv" AS row WITH row WHERE row.Employee_id is not null

// create nodes for each category

// employee nodes
MERGE (E:Employee_id {EID : row.Employee_id, YOE : row.YOE})

// Designation nodes
MERGE (D:Designation {Designation: row.Designation})

//Skill nodes 
MERGE (S1:Skill {Skill: row.Skill1})
MERGE (S2:Skill {Skill: row.Skill2})
MERGE (S3:Skill {Skill: row.Skill3})
MERGE (S4:Skill {Skill: row.Skill4})
MERGE (S5:Skill {Skill: row.Skill5})
MERGE (S6:Skill {Skill: row.Skill6})
MERGE (S7:Skill {Skill: row.Skill7})
MERGE (S8:Skill {Skill: row.Skill8})
MERGE (S9:Skill {Skill: row.Skill9})
MERGE (S10:Skill {Skill: row.Skill10})
MERGE (S11:Skill {Skill: row.Skill11})



//Broader skill segment classification nodes
MERGE (C1:Classification {C: row.Classification1})
MERGE (C2:Classification {C: row.Classification2})
MERGE (C3:Classification {C: row.Classification3})
MERGE (C4:Classification {C: row.Classification4})
MERGE (C5:Classification {C: row.Classification5})
MERGE (C6:Classification {C: row.Classification6})
MERGE (C7:Classification {C: row.Classification7})
MERGE (C8:Classification {C: row.Classification8})
MERGE (C9:Classification {C: row.Classification9})
MERGE (C10:Classification {C: row.Classification10})
MERGE (C11:Classification {C: row.Classification11})



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




