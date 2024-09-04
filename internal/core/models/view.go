package models

import "math/rand"

type GraphView struct {
	Nodes []*NodeView
	Edges []*EdgeView
}

type NodeView struct {
	ID     string
	Name   string
	Color  string
	Radius int
}

type EdgeView struct {
	Source string
	Target string
}

func GetRandomColor() string {
	r := rand.Intn(10)
	switch r {
	case 0:
		return "#6929c4"
	case 1:
		return "#9f1853"
	case 2:
		return "#198038"
	case 3:
		return "#b28600"
	case 4:
		return "#8a3800"
	case 5:
		return "#1192e8"
	case 6:
		return "#fa4d56"
	case 7:
		return "#002d9c"
	case 8:
		return "#009d9a"
	case 9:
		return "#a56eff"
	case 10:
		return "#005d5d"
	case 11:
		return "#570408"
	case 12:
		return "#ee538b"
	default:
		return "#012749"
	}
}
