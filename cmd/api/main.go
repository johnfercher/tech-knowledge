package main

import (
	"context"
	"fmt"
	neo4j2 "github.com/johnfercher/tech-knowledge/internal/adapters/drivens/neo4j"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"log"
)

type Node struct {
	ID   string `json:"id"`
	Name string `json:"name"`
	Type string `json:"type"`
}

func main() {
	driver, err := connectNeo4j()
	if err != nil {
		log.Fatal(err)
	}

	ctx := context.TODO()

	repository := neo4j2.NewGraphRepository(driver)

	nodes, edges, err := repository.GetGraph(ctx)
	if err != nil {
		log.Fatal(err)
	}

	for _, node := range nodes {
		fmt.Println(node)
	}

	for _, edge := range edges {
		fmt.Println(edge)
	}
}

func connectNeo4j() (neo4j.DriverWithContext, error) {
	conn, err := neo4j.NewDriverWithContext("bolt://localhost:7687", neo4j.BasicAuth("neo4j", "supersecret", ""))
	if err != nil {
		return nil, err
	}

	return conn, nil
}
