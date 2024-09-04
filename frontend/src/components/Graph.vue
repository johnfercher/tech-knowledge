<style scoped>
.graph {
  width: 100%;
  height: 1080px;
}
</style>

<template>
  <div v-if="graph !== null">
    <VNetworkGraph
        class="graph"
        :nodes="graph.nodes"
        :edges="graph.edges"
    />
  </div>
  <div v-if="graph === null">
    Loading...
  </div>
</template>

<script>
import axios from "axios";
import VNetworkGraph from "v-network-graph"

export default {
  name: 'HelloWorld',
  props: {
    msg: String,
    VNetworkGraph,
  },
  data() {
    return {
      graph: null,
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



