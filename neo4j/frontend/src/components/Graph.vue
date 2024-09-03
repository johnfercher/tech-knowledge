<style scoped>

</style>

<template>
  <div>
    {{ graph }}
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: 'HelloWorld',
  props: {
    msg: String
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



