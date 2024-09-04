package models

type Graph struct {
	Nodes []*Node
	Edges []*Edge
}

type Node struct {
	ID   string
	Name string
	Type string
}

type Edge struct {
	Source string
	Target string
}
