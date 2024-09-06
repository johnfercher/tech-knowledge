package services

import (
	"context"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
	"github.com/johnfercher/tech-knowledge/internal/core/ports"
)

var MinWidth = 50

type GraphViewer struct {
	repository ports.GraphRepository
}

func NewGraphViewer(repository ports.GraphRepository) *GraphViewer {
	return &GraphViewer{repository: repository}
}

func (g *GraphViewer) GetGraph(ctx context.Context) (*models.GraphView, error) {
	graph, err := g.repository.GetGraph(ctx)
	if err != nil {
		return nil, err
	}

	graphView := &models.GraphView{
		Nodes: g.MapNodes(ctx, graph.Nodes),
		Edges: g.MapEdges(ctx, graph.Edges),
	}

	g.ApplyNodeStyle(ctx, graphView)

	return graphView, nil
}

func (g *GraphViewer) MapNodes(ctx context.Context, nodes []*models.Node) []*models.NodeView {
	views := []*models.NodeView{}
	for _, node := range nodes {
		nodeView := &models.NodeView{
			ID:   node.ID,
			Name: node.Name,
		}

		if node.Label != "" {
			nodeView.Name = node.Label
		}

		if node.Type == "Area" {
			nodeView.Type = "rect"
			nodeView.Width = GetWidthFromText(nodeView.Name)
			nodeView.Height = 40
			nodeView.BorderRadius = 10
		} else if node.Type == "Section" {
			nodeView.Type = "rect"
			nodeView.Width = GetWidthFromText(nodeView.Name)
			nodeView.Height = 40
			nodeView.BorderRadius = 10
		} else {
			nodeView.Type = "rect"
			nodeView.Width = GetWidthFromText(nodeView.Name)
			nodeView.Height = 40
			nodeView.BorderRadius = 10
		}

		views = append(views, nodeView)
	}

	return views
}

func (g *GraphViewer) MapEdges(ctx context.Context, edges []*models.Edge) []*models.EdgeView {
	views := []*models.EdgeView{}
	for _, edge := range edges {
		edgeView := &models.EdgeView{
			Source: edge.Source,
			Target: edge.Target,
		}
		views = append(views, edgeView)
	}

	return views
}

func (g *GraphViewer) ApplyNodeStyle(ctx context.Context, graph *models.GraphView) {
	for i := 0; i < len(graph.Nodes); i++ {
		graph.Nodes[i].Color = models.GetRandomColor()
	}
}

func GetWidthFromText(text string) int {
	borderSpace := 30
	return len(text)*5 + borderSpace
}
