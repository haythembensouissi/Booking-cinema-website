<template>
 <div >
    <div>
      
      <div id="sidebar">
        <nav className="nav">
          <div class="Seach">
            Search
            <input id="SearchBar" />
          </div>
          <div class="Logout">
            Log Out
          </div>
        </nav>
      </div>
      </div>
    }
  </div>
</template>

<script lang="ts">
 import { defineComponent } from 'vue';

export default defineComponent({
  name: 'NavBar',
 
 });
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#sidebar{
 
  width: 100%;
 background-color: rgb(26, 23, 201);
 position: absolute;
 height: 50px;
 margin-top:-25px;
 align-content: center ;
}
nav{
    
}
.Seach{
    color: white;
}
.Logout{
    
    color: white;
}
</style>
