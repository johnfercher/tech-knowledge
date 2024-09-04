<style scoped>
.graph {
  height: 500px;
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
                      .force("edge", forceLink.distance(200).strength(0.5))
                      .force("charge", d3.forceManyBody().strength(-800))
                      .force("center", d3.forceCenter().strength(0.05))
                      .alphaMin(0.001)
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



