// Employee Skill recommender DB creation 

//Creating Nodes for each employee with their respective attributes

CREATE (E1 : EMPLOYEE {name: "E1",YOE:16, Designation:"LQAS"})
CREATE (E2 : EMPLOYEE {name: "E2",YOE:3, Designation:"QAS"})
CREATE (E3 : EMPLOYEE {name: "E3",YOE:0, Designation:"PA"})
CREATE (E4 : EMPLOYEE {name: "E4",YOE:2, Designation:"QAS"})
CREATE (E5 : EMPLOYEE {name: "E5",YOE:3, Designation:"QAS"})
CREATE (E6 : EMPLOYEE {name: "E6",YOE:5, Designation:"SQAS"})
CREATE (E7 : EMPLOYEE {name: "E7",YOE:5, Designation:"QAS"})
CREATE (E8 : EMPLOYEE {name: "E8",YOE:0, Designation:"PA"})
CREATE (E9 : EMPLOYEE {name: "E9",YOE:6, Designation:"QAS"})
CREATE (E10 : EMPLOYEE {name: "E10",YOE:5, Designation:"QAS"})
CREATE (E11 : EMPLOYEE {name: "E11",YOE:4, Designation:"SQAS"})
CREATE (E12 : EMPLOYEE {name: "E12",YOE:13, Designation:"LQAS"})
CREATE (E13 : EMPLOYEE {name: "E13",YOE:5, Designation:"SQAS"})
CREATE (E14 : EMPLOYEE {name: "E14",YOE:3, Designation:"QAS"})
CREATE (E15 : EMPLOYEE {name: "E15",YOE:3, Designation:"QAS"})
CREATE (E16 : EMPLOYEE {name: "E16",YOE:6, Designation:"SQAS"})

// creating nodes for each of the broader skill segments

CREATE ( Tools : Skill_Segment {name: "Tools"})
CREATE ( AI_ML : Skill_Segment {name: "AI/ML"})
CREATE ( Maths_Stats : Skill_Segment {name: "Maths/Stats"})
CREATE ( Business_Domain : Skill_Segment {name: "Business/Domain"})
CREATE ( Technical : Skill_Segment {name: "Technical"})
CREATE ( Soft_Skills : Skill_Segment {name: "Soft_Skills"})

// creating nodes for each of the individual topics within skill segments

// nodes pertaining to Tools segment
CREATE ( Python : topic {name: "Python"})
CREATE ( R : topic {name: "R"})
CREATE ( Excel : topic {name: "MS Excel"})
CREATE ( Pyspark : topic {name: "Pyspark"})
CREATE ( CPP : topic {name: "C++"})
CREATE ( C : topic {name: "C"})
CREATE ( Tableau : topic {name: "Tableau"})
CREATE ( Git : topic {name: "Git"})
CREATE ( MATLAB : topic {name: "MATLAB"})
CREATE ( SQL : topic {name: "SQL"})
CREATE ( SAS : topic {name: "SAS"})
CREATE ( Office : topic {name: "MS Office"})
CREATE ( Azure : topic {name: "Azure"})
CREATE ( Google_Cloud : topic {name: "Google Cloud"})
CREATE ( Spotfire : topic {name: "Spotfire"})


// nodes pertaining to AI/ML

CREATE ( Classical_Machine_Learning : topic {name: "Classical Machine Learning"})
CREATE ( Computer_Vision : topic {name: "Computer Vision"})
CREATE ( Data_Analysis : topic {name: "Data Analysis"})
CREATE ( Deep_Learning : topic {name: "Deep Learning"})
CREATE ( Data_Mining : topic {name: "Data Mining"})
CREATE ( Data_Visualization : topic {name: "Data Visualization"})
CREATE ( Classical_NLP : topic {name: "Classical NLP"})
CREATE ( Transformer_NLP : topic {name: "Transformer NLP"})
CREATE ( MLOps : topic {name: "MLOps"})
CREATE ( Prompt_Engineering : topic {name: "Prompt engineering"})
CREATE ( Data_Modelling : topic {name: "Data Modelling"})
CREATE ( Model_Deployment : topic {name: "Model_Deployment"})
CREATE ( Data_Pipelining : topic {name: "Data Pipelining"})
CREATE ( Reinforcement_Learning : topic {name: "Reinforcement Learning"})
CREATE ( Predictive_Modelling : topic {name: "Predictive Modelling"})
CREATE ( Model_Monitoring : topic {name: "Model Monitoring"})

// nodes pertaining to Maths/Stats

CREATE ( Statistical_Analysis : topic {name: "Statistical_Analysis"})
CREATE ( Time_Series_Analysis : topic {name: "Time Series Analysis"})
CREATE ( Stochastic_Process : topic {name: "Stochastic Process"})
CREATE ( Linear_Algebra : topic {name: "Linear Algebra"})
CREATE ( Probability : topic {name: "Probability"})
CREATE ( Inferential_Statistics : topic {name: "Inferential Statistics"})
CREATE ( Probability_and_Statistics : topic {name: "Probability and statistics"})
CREATE ( Optimization_Algorithms : topic {name: "Optimization Algorithms"})
CREATE ( Calculus : topic {name: "Calculus"})
CREATE ( Statistical_Modelling : topic {name: "Statistical modelling"})
CREATE ( Hypothesis_Testing : topic {name: "Hypothesis testing"})

// nodes for Business/Domain

CREATE ( Card_Analytics : topic {name: "Card Analytics"})
CREATE ( Call_Network_Architecture : topic {name: "Call network architecture"})
CREATE ( Finance : topic {name: "Finance"})
CREATE ( Financial_Analysis : topic {name: "Financial Analysis"})
CREATE ( Contact_Center_Analytics : topic {name: "Contact center analytics"})
CREATE ( Quant_Finance : topic {name: "Quant Finance"})
CREATE ( Payments_Initiation_Channel : topic {name: "Payments initiation channel"})
CREATE ( Algorithmic_Trade : topic {name: "Algorithmic trade"})
CREATE ( AIMDCOE_Processes : topic {name: "AIMDCOE_processes"})
CREATE ( Operations_Research : topic {name: "Operations Research"})
CREATE ( Capital_Market_Analysis : topic {name: "Capital market analysis"})
CREATE ( Payments_Ecosystem : topic {name: "Payments Ecosystem"})
CREATE ( Financial_Modelling : topic {name: "Financial modelling"})
CREATE ( Banking_Domain_Knowledge : topic {name: "Banking domain knowledge"})

// nodes for technical segment

CREATE ( Cloud_Computing : topic {name: "cloud computing"})
CREATE ( Big_Data_Management : topic {name: "Big data management"})
CREATE ( Programming : topic {name: "Programming"})
CREATE ( Data_Analytics : topic {name: "Data Analytics"})
CREATE ( Reports_and_Documentation : topic {name: "reports and documentation"})
CREATE ( Design_Thinking : topic {name: "Design Thinking"})

// nodes for Soft Skills

CREATE ( Presentation : topic {name: "Presentation"})
CREATE ( Communication : topic {name: "Communication"})
CREATE ( StoryTelling : topic {name: "StoryTelling"})
CREATE ( Stakeholder_Management : topic {name: "Stakeholder_Management"})
CREATE ( Client_Relationship_Management : topic {name: "Client Relationship Management"})
CREATE ( Critical_Thinking : topic {name: "Critical Thinking"})
CREATE ( Product_Management : topic {name: "Product Management"})
CREATE ( Agile : topic {name: "Agile"})
CREATE ( Leadership : topic {name: "Leadership"})
CREATE ( Project_Management : topic {name: "Project Management"})
CREATE ( Scrum : topic {name: "Scrum"})

// creating relationships between employee node and the mentioned topic in which they are skilled

//E1 employee's skills ( 1 to 10 rating)

CREATE (E1) - [:is_skilled_in{skill_rating:8}] -> (Finance)
CREATE (E1) - [:is_skilled_in{skill_rating:7}] -> (Data_Analysis)
CREATE (E1) - [:is_skilled_in{skill_rating:9}] -> (Card_Analytics)
CREATE (E1) - [:is_skilled_in{skill_rating:5}] -> (Contact_Center_Analytics)
CREATE (E1) - [:is_skilled_in{skill_rating:7}] -> (Presentation)
CREATE (E1) - [:is_skilled_in{skill_rating:8}] -> (Python)
CREATE (E1) - [:is_skilled_in{skill_rating:8}] -> (Statistical_Modelling)
CREATE (E1) - [:is_skilled_in{skill_rating:6}] -> (Deep_Learning)
CREATE (E1) - [:is_skilled_in{skill_rating:8}] -> (Capital_Market_Analysis)
CREATE (E1) - [:is_skilled_in{skill_rating:7}] -> (Pyspark)
CREATE (E1) - [:is_skilled_in{skill_rating:7}] -> (SAS)


//E2 employee's skills ( 1 to 10 rating)

CREATE (E2) - [:is_skilled_in{skill_rating:8}] -> (Python)
CREATE (E2) - [:is_skilled_in{skill_rating:8}] -> (Time_Series_Analysis)
CREATE (E2) - [:is_skilled_in{skill_rating:7}] -> (Data_Visualization)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Presentation)
CREATE (E2) - [:is_skilled_in{skill_rating:3}] -> (Classical_Machine_Learning)
CREATE (E2) - [:is_skilled_in{skill_rating:4}] -> (Classical_NLP)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Statistical_Algorithms)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Hypothesis_Testing)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Inferential_statistics)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Contact_Center_Analytics)
CREATE (E2) - [:is_skilled_in{skill_rating:9}] -> (Payments_Ecosystem)

//E3 employee's skills ( 1 to 10 rating)

CREATE (E3) - [:is_skilled_in{skill_rating:6}] -> (Python)
CREATE (E3) - [:is_skilled_in{skill_rating:4}] -> (R)
CREATE (E3) - [:is_skilled_in{skill_rating:5}] -> (SQL)
CREATE (E3) - [:is_skilled_in{skill_rating:6}] -> (Excel)
CREATE (E3) - [:is_skilled_in{skill_rating:6}] -> (Communication)
CREATE (E3) - [:is_skilled_in{skill_rating:6}] -> (Tableau)
CREATE (E3) - [:is_skilled_in{skill_rating:6}] -> (CPP)
CREATE (E3) - [:is_skilled_in{skill_rating:5}] -> (C)
CREATE (E3) - [:is_skilled_in{skill_rating:7}] -> (Statistical_Analysis)
CREATE (E3) - [:is_skilled_in{skill_rating:7}] -> (Supervised_ML)

//E4 employee's skills ( 1 to 10 rating)

CREATE (E4) - [:is_skilled_in{skill_rating:8}] -> (Python)
CREATE (E4) - [:is_skilled_in{skill_rating:7}] -> (Pyspark)
CREATE (E4) - [:is_skilled_in{skill_rating:8}] -> (Linear_Algebra)
CREATE (E4) - [:is_skilled_in{skill_rating:8}] -> (Inferential_Statistics)
CREATE (E4) - [:is_skilled_in{skill_rating:7}] -> (Classical_Machine_Learning)
CREATE (E4) - [:is_skilled_in{skill_rating:6}] -> (Predictive_Modelling)
CREATE (E4) - [:is_skilled_in{skill_rating:7}] -> (Payments_Initiation_Channel)
CREATE (E4) - [:is_skilled_in{skill_rating:7}] -> (Git)
CREATE (E4) - [:is_skilled_in{skill_rating:8}] -> (Time_Series_Analysis)
CREATE (E4) - [:is_skilled_in{skill_rating:5}] -> (R)
CREATE (E4) - [:is_skilled_in{skill_rating:7}] -> (Presentation)






















// creating relationships between topics and the broader skill segments
//Tools segment
CREATE (Python) - [:is_a_part_of] -> (Tools)
CREATE (R) - [:is_a_part_of] -> (Tools)
CREATE (Excel) - [:is_a_part_of] -> (Tools)
CREATE (Pyspark) - [:is_a_part_of] -> (Tools)
CREATE (CPP) - [:is_a_part_of] -> (Tools)
CREATE (Tableau) - [:is_a_part_of] -> (Tools)
CREATE (C) - [:is_a_part_of] -> (Tools)
CREATE (Git) - [:is_a_part_of] -> (Tools)
CREATE (MATLAB) - [:is_a_part_of] -> (Tools)
CREATE (SQL) - [:is_a_part_of] -> (Tools)
CREATE (SAS) - [:is_a_part_of] -> (Tools)
CREATE (Office) - [:is_a_part_of] -> (Tools)
CREATE (Azure) - [:is_a_part_of] -> (Tools)
CREATE (Google_Cloud) - [:is_a_part_of] -> (Tools)
CREATE (Spotfire) - [:is_a_part_of] -> (Tools)

//AI/ML segment
CREATE (Classical_Machine_Learning) - [:is_a_part_of] -> (AI_ML)
CREATE (Computer_Vision) - [:is_a_part_of] -> (AI_ML)
CREATE (Data_Analysis) - [:is_a_part_of] -> (AI_ML)
CREATE (Deep_Learning) - [:is_a_part_of] -> (AI_ML)
CREATE (Data_Mining) - [:is_a_part_of] -> (AI_ML)
CREATE (Data_Visualization) - [:is_a_part_of] -> (AI_ML)
CREATE (Classical_NLP) - [:is_a_part_of] -> (AI_ML)
CREATE (Transformer_NLP) - [:is_a_part_of] -> (AI_ML)
CREATE (MLOps) - [:is_a_part_of] -> (AI_ML)
CREATE (Prompt_Engineering) - [:is_a_part_of] -> (AI_ML)
CREATE (Data_Modelling) - [:is_a_part_of] -> (AI_ML)
CREATE (Model_Deployment) - [:is_a_part_of] -> (AI_ML)
CREATE (Data_Pipelining) - [:is_a_part_of] -> (AI_ML)
CREATE (Reinforcement_Learning) - [:is_a_part_of] -> (AI_ML)
CREATE (Predictive_Modelling) - [:is_a_part_of] -> (AI_ML)
CREATE (Model_Monitoring) - [:is_a_part_of] -> (AI_ML)

// Maths/Stats segment

CREATE (Statistical_Analysis) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Time_Series_Analysis) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Stochastic_Process) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Linear_Algebra) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Probability) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Inferential_Statistics) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Probability_and_Statistics) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Optimization_Algorithms) - [:is_a_part_of] -> (Maths_Stats)
CREATE (Statistical_Analysis) - [:is_a_part_of] -> (Maths_Stats)


















