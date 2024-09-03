package http

import (
	"github.com/johnfercher/tech-knowledge/internal/core/ports"
	"net/http"
)

type FullGraphReader struct {
	repository ports.GraphRepository
}

func NewFullGraphReader(repository ports.GraphRepository) *FullGraphReader {
	return &FullGraphReader{
		repository: repository,
	}
}

func (f *FullGraphReader) Method() string {
	return "GET"
}

func (f *FullGraphReader) Pattern() string {
	return "/graph"
}

func (f *FullGraphReader) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	ctx := r.Context()

	graph, err := f.repository.GetGraph(ctx)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	WriteResponse(w, graph, http.StatusOK)
}
