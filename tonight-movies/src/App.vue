<template>
  <nav class="welcomeNavBar">
    <router-link to="/">home</router-link> |
    <router-link to="/about">signup</router-link>
    <router-link to="/login">log in </router-link>
  </nav>
  <router-view/>
</template>
<script>

export default defineComponent({
  
})
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

  color: #2c3e50;
}


.welcomeNavBar {
  font-family: 'Barlow Condensed', sans-serif;
  color:white;
  margin-top:-8px;
  background-color: #FFC425;
  border-radius: 5px;
    text-align: center;
    height: 50px;
}

.welcomeNavBar a {
    font-family: 'Barlow Condensed', sans-serif;
  font-weight: bold;
  color: #000000;
}


.welcomeNavBar a.router-link-exact-active {
  color: #ffffff;
  margin-left: 10px;
  font-size: larger;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

</style>
