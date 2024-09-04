package http

import (
	"fmt"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
)

type Graph struct {
	Nodes map[string]*Node `json:"nodes"`
	Edges map[string]*Edge `json:"edges"`
}

type Node struct {
	ID     string `json:"id"`
	Name   string `json:"name"`
	Color  string `json:"color"`
	Radius int    `json:"radius"`
}

type Edge struct {
	Source string `json:"source"`
	Target string `json:"target"`
}

func Map(graph *models.GraphView) *Graph {
	response := &Graph{
		Nodes: make(map[string]*Node),
		Edges: make(map[string]*Edge),
	}

	for _, node := range graph.Nodes {
		n := &Node{
			ID:     node.ID,
			Name:   node.Name,
			Color:  node.Color,
			Radius: node.Radius,
		}
		response.Nodes[node.ID] = n

	}

	for i, edge := range graph.Edges {
		response.Edges[fmt.Sprintf("edge%d", i)] = &Edge{
			Source: edge.Source,
			Target: edge.Target,
		}
	}

	return response
}
