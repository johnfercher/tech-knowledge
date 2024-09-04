CREATE (a:Vertex {id: "tech_knowledge", name: "Tech Knowledge", type: "Center"});

// BEGIN: ===================================== CODING =====================================
CREATE (a:Vertex {id: "area_coding", name: "Coding", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_coding" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);

// SECTION - OOP
CREATE (a:Vertex {id: "section_oop", name: "Object-Oriented Programming", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_oop" AND b.id = "area_coding" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_abstraction", name: "Abstraction", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_abstraction" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_encapsulation", name: "Encapsulation", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_encapsulation" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_polymorphism", name: "Polymorphism", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_polymorphism" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_inheritance", name: "Inheritance", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_inheritance" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

// SECTION - SOLID
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

// SECTION - DESIGN-PATTERNS
CREATE (a:Vertex {id: "section_design_patterns", name: "Design Patterns", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_design_patterns" AND b.id = "section_oop" CREATE (a)-[:related_to]->(b);

// Creational Patterns
CREATE (a:Vertex {id: "section_creational_patterns", name: "Creational Patterns", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_creational_patterns" AND b.id = "section_design_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_factory", name: "Factory Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_factory" AND b.id = "section_creational_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_abstract_factory", name: "Abstract Factory Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_abstract_factory" AND b.id = "section_creational_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_builder", name: "Builder Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_builder" AND b.id = "section_creational_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_singleton", name: "Singleton Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_singleton" AND b.id = "section_creational_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_prototype", name: "Prototype Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_prototype" AND b.id = "section_creational_patterns" CREATE (a)-[:related_to]->(b);

// Structural Patterns
CREATE (a:Vertex {id: "section_structural_patterns", name: "Structural Patterns", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_structural_patterns" AND b.id = "section_design_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_decorator", name: "Decorator Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_decorator" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_adapter", name: "Adapter Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_adapter" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_facade", name: "Facade Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_facade" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_composite", name: "Composite Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_composite" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_proxy", name: "Proxy Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_proxy" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_bridge", name: "Bridge Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_bridge" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_flyweight", name: "Flyweight Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_flyweight" AND b.id = "section_structural_patterns" CREATE (a)-[:related_to]->(b);

// Behavioral Patterns
CREATE (a:Vertex {id: "section_behavioral_patterns", name: "Behavioral Patterns", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_behavioral_patterns" AND b.id = "section_design_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_strategy", name: "Strategy Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_strategy" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_template_method", name: "Template Method Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_template_method" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_chain_of_responsibility", name: "Chain Of Responsibility Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_chain_of_responsibility" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_command", name: "Command Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_command" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_iterator", name: "Iterator Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_iterator" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_mediator", name: "Mediator Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_mediator" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_observer", name: "Observer Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_observer" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_memento", name: "Memento Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_memento" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_state", name: "State Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_state" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_visitor", name: "Visitor Pattern", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_visitor" AND b.id = "section_behavioral_patterns" CREATE (a)-[:related_to]->(b);

// SECTION - Testing
CREATE (a:Vertex {id: "section_testing", name: "Testing", type: "Section"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "section_testing" AND b.id = "area_coding" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_tdd", name: "Test-Driven Development", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_tdd" AND b.id = "section_testing" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_unit_testing", name: "Unit Testing", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_unit_testing" AND b.id = "section_testing" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_integration_testing", name: "Integration Testing", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_integration_testing" AND b.id = "section_testing" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_smoke_testing", name: "Smoke Testing", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_smoke_testing" AND b.id = "section_testing" CREATE (a)-[:related_to]->(b);

CREATE (a:Vertex {id: "topic_e2e_testing", name: "E2E Testing", type: "Topic"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "topic_e2e_testing" AND b.id = "section_testing" CREATE (a)-[:related_to]->(b);

// END: ===================================== CODING =====================================

// BEGIN: ===================================== MICROSERVICES =====================================
CREATE (a:Vertex {id: "area_microservices", name: "Microservices", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_microservices" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END: ===================================== MICROSERVICES =====================================

// BEGIN: ===================================== GOLANG =====================================
CREATE (a:Vertex {id: "area_golang", name: "Golang", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_golang" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END: ===================================== GOLANG =====================================

// BEGIN: ===================================== COMPUTING =====================================
CREATE (a:Vertex {id: "area_computing", name: "Computing", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_computing" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END : ===================================== COMPUTING =====================================

// BEGIN: ===================================== DATABASE =====================================
CREATE (a:Vertex {id: "area_database", name: "Database", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_database" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END: ===================================== DATABASE =====================================

// BEGIN: ===================================== VERSIONING =====================================
CREATE (a:Vertex {id: "area_versioning", name: "Versioning", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_versioning" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END: ===================================== VERSIONING =====================================

// BEGIN: ===================================== OBSERVABILITY =====================================
CREATE (a:Vertex {id: "area_observability", name: "Observability", type: "Area"});
MATCH (a:Vertex), (b:Vertex) WHERE a.id = "area_observability" AND b.id = "tech_knowledge" CREATE (a)-[:related_to]->(b);
// END: ===================================== OBSERVABILITY =====================================