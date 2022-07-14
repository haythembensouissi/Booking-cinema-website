<template>
  <div class="home">
    <h1>Welcome to <span>t</span>onight <span>m</span>ovies</h1>
    <span>G</span><span>L</span><span>O</span><span>W</span><span>I</span><span>N</span><span>G</span>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'HomeView',
  components: {
   
  },
});
</script>
<style>
:root{
  --red:red 
}
span{
  color: var(--red);
} 
*::selection{
  background:var(--red );

}


</style>
