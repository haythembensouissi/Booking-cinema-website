<!-- eslint-disable vue/no-mutating-props -->
<template>
  <form @submit.prevent="">
    <div class="form-group">
      <label>Username</label>
      <input class="form-control" placeholder="Enter your name" required v-model="username"/>
    </div>
    <div class="form-group">
      <label>Password</label>
      <input class="form-control" type="password" placeholder="password" required v-model="password" />
    </div>
    <router-link to="/HomePage" >Login</router-link>
  </form>
</template>

<script lang="ts">

import { defineComponent } from 'vue';
import axios from 'axios';
export default defineComponent({
  name: 'LoginForm',
  props: {
    Username: String,
    Password: String,
  },
  data(){
    return{
      username:String,
      password:String,
      error:String,
      
    }
  },
  
  methods: {
  
}
})


</script>


<style scoped>

</style>
