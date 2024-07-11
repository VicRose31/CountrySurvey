import { createRouter as createRouter, createWebHistory } from 'vue-router'
import { useStore } from 'vuex'

import CountriesView from '../views/CountriesView.vue'
import LoginView from '../views/LoginView.vue'
import LogoutView from '../views/LogoutView.vue'
import RegisterView from '../views/RegisterView.vue'
import CountryDetailsView from '../views/CountryDetailsView.vue'
import IndividualResultsView from '../views/IndividualResultsView.vue'
import HomeView from '../views/HomeView.vue'
import AllResultsView from '../views/AllResultsView.vue'
import MyResultsView from '../views/MyResultsView.vue'

const routes = [
    {
        path: '/',
        name: 'home',
        component: HomeView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: '/countries',
        name: 'countries',
        component: CountriesView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: "/login",
        name: "login",
        component: LoginView,
        meta: {
            requiresAuth: false 
        } 
    },
    {
        path: "/logout",
        name: "logout",
        component: LogoutView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: "/register",
        name: "register",
        component: RegisterView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: '/country/:countryId',
        name: 'country-details',
        component: CountryDetailsView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: '/results/:participantId',
        name: 'individual-results',
        component: IndividualResultsView,
        meta: {
            requiresAuth: false 
        }
    },
    {
        path: '/myresults',
        name: 'my-rseults',
        component: MyResultsView,
        meta: {
            requiresAuth: false 
        }
    }
    {
        path: 'allresults',
        name: 'all-results',
        component: AllResultsView,
        meta: {
            requiresAuth: false 
        }
    }
];

// Create the router
const router = createRouter({
    history: createWebHistory(),
    routes: routes
  });

  
router.beforeEach((to) => {

    // Get the Vuex store
    const store = useStore();
  
    // Clear error notifications from previous view
    store.commit("CLEAR_MESSAGE");
  
    // Determine if the route requires Authentication
    const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
  
    // If it does and they are not logged in, send the user to "/login"
    if (requiresAuth && store.state.token === '') {
      return {name: "login"};
    } 
    // Otherwise, do nothing and they'll go to their next destination
  });
  
  export default router;