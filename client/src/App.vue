<template>
    <div id="country-app">
      <header>
        <div class="header-logo">
          <img src="images/country-logo.png">   
        </div>
      </header>
    
      <nav>
          <router-link v-bind:to="{ name: 'products' }" class="home">Home</router-link>
          <router-link v-bind:to="{ name: 'shopping-cart'}" class="cart">Cart</router-link>  
          <span class="message-window"></span>
          <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token" class="logInOut">
            Logout
          </router-link>
          <router-link v-bind:to="{ name: 'login' }" v-else class="logInOut">Login</router-link>
      </nav>
      <main>
        <router-view />
      </main>
      <footer>&copy 2024 All rights reserved.</footer>
    </div>
  </template>