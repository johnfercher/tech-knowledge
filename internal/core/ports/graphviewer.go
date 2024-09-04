package ports

import (
	"context"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
)

type GraphViewer interface {
	GetGraph(ctx context.Context) (*models.GraphView, error)
}
