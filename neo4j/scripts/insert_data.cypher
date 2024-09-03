/*
  Area, Section, Topic
*/

// BEGIN: ===================================== CODING =====================================
CREATE (a:Vertex {id: "area_coding", name: "Coding", type: "Area"});

CREATE (a:Vertex {id: "section_oop", name: "Object-Oriented Programming", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_oop" AND b.id = "area_coding" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "section_solid", name: "S.O.L.I.D Principles", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_solid" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_srp", name: "Single-Responsibility Principle", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_srp" AND b.id = "section_solid" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_ocp", name: "Open-Closed Principle", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_ocp" AND b.id = "section_solid" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_lsp", name: "Liskov Substitution Principle", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_lsp" AND b.id = "section_solid" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_isp", name: "Interface Segregation Principle", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_isp" AND b.id = "section_solid" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_dip", name: "Dependency Inversion Principle", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_dip" AND b.id = "section_solid" CREATE (a)-[:related_to]->(b);

// END: ===================================== CODING =====================================

// BEGIN: ===================================== MICROSERVICES =====================================
CREATE (a:Vertex {id: "area_microservices", name: "Microservices", type: "Area"});
// END: ===================================== MICROSERVICES =====================================

// BEGIN: ===================================== GOLANG =====================================
CREATE (a:Vertex {id: "area_golang", name: "Golang", type: "Area"});
// END: ===================================== GOLANG =====================================

// BEGIN: ===================================== COMPUTING =====================================
CREATE (a:Vertex {id: "area_computing", name: "Computing", type: "Area"});
// END : ===================================== COMPUTING =====================================

// BEGIN: ===================================== DATABASE =====================================
CREATE (a:Vertex {id: "area_database", name: "Database", type: "Area"});
// END: ===================================== DATABASE =====================================

// BEGIN: ===================================== VERSIONING =====================================
CREATE (a:Vertex {id: "area_versioning", name: "Versioning", type: "Area"});
// END: ===================================== VERSIONING =====================================

// BEGIN: ===================================== OBSERVABILITY =====================================
CREATE (a:Vertex {id: "area_observability", name: "Observability", type: "Area"});
// END: ===================================== OBSERVABILITY =====================================