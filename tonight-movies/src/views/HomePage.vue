<template>
  <div class="homePage">
   
    <NavBar/>
    <AllCards/>
    <Sidebar/>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import NavBar from '@/components/NavBar.vue'; // @ is an alias to /src
import AllCards from '@/components/AllCards.vue'
import SideBar from '@/components/SideBar.vue'
export default defineComponent({
  name: 'HomePage',
  components: {
    NavBar,
    AllCards,
    SideBar
  },
});
</script>
