<template>
    <div id="register">
      <form v-on:submit.prevent="register">
        <h1>Create Account</h1>
        <div id="fields">
          <label for="username">Username</label>
          <input
            type="text"
            id="username"
            placeholder="Username"
            v-model="user.username"
            required
            autofocus
          />
          <label for="firstName">First Name</label>
          <input
            type="text"
            id="firstName"
            placeholder="First Name"
            v-model="user.firstName"
            required
          />
          <label for="lastName">Last Name</label>
          <input
            type="text"
            id="lastName"
            placeholder="Last Name"
            v-model="user.lastName"
            required
          />
          <label for="password">Password</label>
          <input
            type="password"
            id="password"
            placeholder="Password"
            v-model="user.password"
            required
          />
          <label for="confirmPassword">Confirm password</label>
          <input
            type="password"
            id="confirmPassword"
            placeholder="Confirm Password"
            v-model="user.confirmPassword"
            required
          />
          <label for="gender">Gender</label>
          <select id="gender" name = "gender" v-model="user.gender">
            <option disabled value="">--Please choose an option--</option>
            <option value="F">Female</option>
            <option value="M">Male</option>
            <option value="null">Prefer not to answer</option>
          </select>
  
          <div></div>
          <div>
            <button type="submit">Create Account</button>
          </div>
        </div>
        <hr />
        <div id="sign-in">
          Have an account?
          <router-link v-bind:to="{ name: 'login' }">Sign in!</router-link>
        </div>
        
      </form>
    </div>
  </template>
  
  <script>
  import authService from "../services/AuthService";
  
  export default {
    data() {
      return {
        user: {
          username: "",
          firstName: "",
          lastName: "",
          password: "",
          confirmPassword: "",
          gender: "",
          role: "user",
        },
      };
    },
    methods: {
      error(msg) {
        alert(msg);
      },
      success(msg) {
        alert(msg);
      },
      register() {
        if (this.user.password != this.user.confirmPassword) {
          this.error("Password & Confirm Password do not match");
        } else {
          authService
            .register(this.user)
            .then((response) => {
              if (response.status == 201) {
                this.success("Thank you for registering, please sign in.");
                this.$router.push({
                  path: "/login",
                });
              }
            })
            .catch((error) => {
              const response = error.response;
              if (!response) {
                this.error(error);
              } else if (response.status === 400) {
                if (response.data.errors) {
                  // Show the validation errors
                  let msg = "Validation error: ";
                  for (let err of response.data.errors) {
                    msg += `'${err.field}':${err.defaultMessage}. `;
                  }
                  this.error(msg);
                } else {
                  this.error(response.data.message);
                }
              } else {
                this.error(response.data.message);
              }
            });
        }
      },
    },
  };
  </script>
  
  <style scoped>
  #fields {
    display: flex;
    flex-direction: column;
    gap: 10px;
    width: 400px;
    margin-left: 20px;
    margin-bottom: 20px;
  }
  h1 {
    margin-left: 20px;
  }
  #sign-in {
    margin-left: 20px;
  }
  
  </style>
  