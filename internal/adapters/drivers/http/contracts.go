package http

import (
	"fmt"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
)

type Graph struct {
	Nodes map[string]*Node `json:"nodes"`
	Edges map[string]*Edge `json:"edges"`
	Path  map[string]*Path `json:"paths"`
}

type Node struct {
	ID           string `json:"id"`
	Name         string `json:"name"`
	Color        string `json:"color"`
	Radius       int    `json:"radius"`
	BorderRadius int    `json:"border_radius"`
	Type         string `json:"type"`
	Width        int    `json:"width"`
	Height       int    `json:"height"`
}

type Edge struct {
	Source string `json:"source"`
	Target string `json:"target"`
}

type Path struct {
	Edges []string `json:"edges"`
	Color string   `json:"color"`
}

func Map(graph *models.GraphView) *Graph {
	response := &Graph{
		Nodes: make(map[string]*Node),
		Edges: make(map[string]*Edge),
	}

	for _, node := range graph.Nodes {
		n := &Node{
			ID:           node.ID,
			Name:         node.Name,
			Color:        node.Color,
			Radius:       node.Radius,
			BorderRadius: node.BorderRadius,
			Type:         node.Type,
			Width:        node.Width,
			Height:       node.Height,
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
