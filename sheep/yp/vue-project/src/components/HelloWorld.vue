<template>
  <p>{{ msg }}</p>
  <el-row>
  <el-button>按鈕1</el-button>
  <el-button type="primary">按鈕2</el-button>
  <el-button type="success">按鈕3</el-button>
  <el-button type="info">按鈕4</el-button>
  <el-button type="warning">按鈕5</el-button>
  <el-button type="danger">按鈕6</el-button>
</el-row>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "HelloWorld",
  props: {
    message: {
      type: String,
      default: "World",
    },
  },
  setup(props) {
    return {
      msg: props.message,
    };
  },
});
</script>