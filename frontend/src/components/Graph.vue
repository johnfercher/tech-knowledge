<style scoped>
.graph {
  border: solid red 1px;
  height: 1080px;
}
</style>

<template>
  <div v-if="graph !== null">
    <v-network-graph
        class="graph"
        :zoom-level="0.5"
        :nodes="graph.nodes"
        :edges="graph.edges"
        :configs="configs"
    />
  </div>
  <div v-if="graph === null">
    Loading...
  </div>
</template>

<script>
import axios from "axios";
import VNetworkGraph from "v-network-graph"
import * as vNG from "v-network-graph"
import {
  ForceLayout,
} from "v-network-graph/lib/force-layout"
import {reactive, ref} from "vue";

export default {
  name: 'HelloWorld',
  props: {
    VNetworkGraph,
  },
  data() {
    return {
      graph: {
        nodes: [],
        edges: [],
      },
      nodeCount: ref(20),
      configs: reactive(
          vNG.defineConfigs({
            view: {
              layoutHandler: new ForceLayout({
                positionFixedByDrag: false,
                positionFixedByClickWithAltKey: true,
                createSimulation: (d3, nodes, edges) => {
                  // d3-force parameters
                  const forceLink = d3.forceLink(edges).id(d => d.id)
                  return d3
                      .forceSimulation(nodes)
                      .force("edge", forceLink.distance(200).strength(20.5))
                      .force("charge", d3.forceManyBody().strength(-10000))
                      .force("center", d3.forceCenter().strength(0.101))
                      .alphaMin(0.011)
                }
              }),
            },
            node: {
              normal: {
                radius: n => n.radius,
                color: n => n.color,
              },
              label: {
                visible: true,
              },
            },
            edge: {
              selectable: true,
              normal: {
                width: 3,
                color: "#4466cc",
                dasharray: "0",
                linecap: "butt",
                animate: false,
                animationSpeed: 50,
              },
              gap: 5,
              type: "straight",
              margin: 10,
              marker: {
                source: {
                  type: "arrow",
                  width: 4,
                  height: 4,
                  margin: -1,
                  offset: 0,
                  units: "strokeWidth",
                  color: null,
                },
                target: {
                  type: "none",
                  width: 4,
                  height: 4,
                  margin: -1,
                  offset: 0,
                  units: "strokeWidth",
                  color: null,
                },
              },
            },
          })
      )
    }
  },
  async mounted() {
    await this.getGraph()
  },
  methods: {
    async getGraph() {
      this.graph = await axios.get("http://localhost:3000/graph").then(response => {
        return response.data
      }).catch(err => {
        return err
      })
    }
  }
}
</script>



