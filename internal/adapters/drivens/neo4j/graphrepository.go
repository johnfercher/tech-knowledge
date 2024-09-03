package neo4j

import (
	"context"
	"github.com/johnfercher/tech-knowledge/internal/core/models"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"log"
)

type GraphRepository struct {
	db neo4j.DriverWithContext
}

func NewGraphRepository(db neo4j.DriverWithContext) *GraphRepository {
	return &GraphRepository{db: db}
}

func (g *GraphRepository) GetGraph(ctx context.Context) (*models.Graph, error) {
	// Return path between vertex
	result, err := neo4j.ExecuteQuery(ctx, g.db, `MATCH p=(x:Vertex)-[r]-(y:Vertex) WHERE (x)-[:related_to]->(y) RETURN p`,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))

	if err != nil {
		log.Fatal(err.Error())
	}

	graph := &models.Graph{}

	for _, record := range result.Records {
		path := record.Values[0].(neo4j.Path)

		node := &models.Node{}
		for i, rawNode := range path.Nodes {
			if i == 0 {
				node = &models.Node{
					ID:   rawNode.Props["id"].(string),
					Name: rawNode.Props["name"].(string),
					Type: rawNode.Props["type"].(string),
				}
				graph.Nodes = append(graph.Nodes, node)
				continue
			}

			edge := &models.Edge{
				AID: node.ID,
				BID: rawNode.Props["id"].(string),
			}
			graph.Edges = append(graph.Edges, edge)
		}
	}

	return graph, nil
}
