package models

type Graph struct {
	Nodes []*Node
	Edges []*Edge
}

type Node struct {
	ID     string
	Name   string
	Type   string
	Vector *Vector
}

type Edge struct {
	Source string
	Target string
}

type Vector struct {
	X int
	Y int
}
