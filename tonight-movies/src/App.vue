<template>
  <nav class="welcomeNavBar">
    <router-link to="/">home</router-link> |
    <router-link to="/about">signup</router-link>
    <router-link to="/login">log in </router-link>
  </nav>
  <router-view/>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

  color: #2c3e50;
}


.welcomeNavBar {
  color:white;
  padding-top:0px ;
  background-color: #37474F;
  border-radius: 5px;
    text-align: center;
}

.welcomeNavBar a {

  font-weight: bold;
  color: #2c3e50;
}


.welcomeNavBar a.router-link-exact-active {
  color: #42b983;
  margin-left: 10px;
  font-size: larger;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

</style>
