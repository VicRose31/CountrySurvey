<template>
    <div id="country-app">
      <header>
        <div class="header-logo">
          <img src="images/country-logo.png">   
        </div>
      </header>
    
      <nav>
          <router-link v-bind:to="{ name: 'home' }" class="home">Home</router-link>
          <router-link v-bind:to="{ name: 'survey' }" class="survey">Take Survey</router-link>  
          <router-link v-bind:to="{ name: 'my-results' }" class="my-results">See My Results</router-link>
          <router-link v-bind:to="{ name: 'all-results' }" class="all-results">See All Results</router-link>
          <router-link v-bind:to="{ name: 'countries' }" class="countries">View Countries</router-link>
          <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token" class="logInOut">Logout</router-link>
          <router-link v-bind:to="{ name: 'login' }" v-else class="logInOut">Login</router-link>
      </nav>
      <main>
        <router-view />
      </main>
      <footer>&copy 2024 All rights reserved.</footer>
    </div>
  </template>

  <style scoped>
    #country-app {
      display : grid;
      height : 98vh;
      grid-template-areas: 
        "header header"
        "nav main"
        "footer footer";
      grid-template-rows : 100px 1fr 25px;
      overflow : hidden;  
    }

    


  </style>