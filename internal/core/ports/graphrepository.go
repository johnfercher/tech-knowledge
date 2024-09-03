package ports

import (
	"context"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
)

type GraphRepository interface {
	GetGraph(ctx context.Context) ([]*models.Node, []*models.Edge, error)
}
