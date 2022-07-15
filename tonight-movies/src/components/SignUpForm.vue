<template>
    <form @submit.prevent="handleSignup">
        <div class="form-group">
            <label>Username:  </label>
            <input class="form-control" placeholder="enter your name" required v-model="username" />
        </div>
        <div class="form-group">
            <label >Email:  </label>
            <input class="form-control" placeholder="Enter your email" required v-model="email" />
        </div>
        <div class="form-group">
            <label >Password:  </label>
         <input class="form-control" type="password" placeholder="Password" required  v-model="password" />
        </div>
        <button class="btn" type="submit"> SignUp</button>
    </form>
</template>
<script lang="ts">
import axios from 'axios';
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'SignUpForm',
  props: {
    Username : String,
    Email: String,
    Password: String,
  },
  data(){
    return{
        username:String,
        email:String,
        password:String
    }
  },
  methods:{
    handleSignup(){
        axios.post("/signup/user",this.$data).then(response=>{
            console.log(response)
        }).catch(error=>console.log(error))
    }
  }
});
</script>
<style>

form{
  
  margin-top: 20%;
  


}
label{
  color: aqua;
  font-size: large;
}
.btn{
  cursor: pointer;
  margin-top: 100px;
    display: flex;
       align-items: center;
       justify-content: center;
       width: 24rem;
       height: 3.3rem;
       border-radius: 10vw;
       font-size: 1rem;
       text-decoration: none;
       font-weight: 700;
       margin-left: 45%;
}
</style>