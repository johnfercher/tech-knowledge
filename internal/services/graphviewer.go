package services

import (
	"context"
	"fmt"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
	"github.com/johnfercher/tech-knowledge/internal/core/ports"
)

type GraphViewer struct {
	repository ports.GraphRepository
}

func NewGraphViewer(repository ports.GraphRepository) *GraphViewer {
	return &GraphViewer{repository: repository}
}

func (g *GraphViewer) GetGraph(ctx context.Context) (*models.Graph, error) {
	graph, err := g.repository.GetGraph(ctx)
	if err != nil {
		return nil, err
	}

	for i := 0; i < len(graph.Edges); i++ {
		for j := 0; j < len(graph.Nodes); j++ {
			if graph.Edges[i].Target == graph.Nodes[j].ID {
				if graph.Nodes[j].Vector == nil {

				}
			}
		}
	}

	return graph, nil
}

func (g *GraphViewer) key(x int, y int) string {
	return fmt.Sprintf("%d-%d", x, y)
}
