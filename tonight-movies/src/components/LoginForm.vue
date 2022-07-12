<template>
  <form>
    <div class="form-group">
      <label>Username</label>
      <input
        class="form-control"
        placeholder="Username"
        required
      />
    </div>
    <div class="form-group">
      <label>Password</label>
      <input
        class="form-control"
        type="password"
        placeholder="Password"
        required
      />
    </div>
    <button class="btn" type="submit">Login</button>
  </form>
</template>

<script lang="ts">
// import { defineComponent } from 'vue';

// export default defineComponent({
//   name: 'HelloWorld',
//   props: {
//     msg: String,
//   },
// });
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
