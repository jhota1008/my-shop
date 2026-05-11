import { createRouter, createWebHistory } from 'vue-router'

import ProductList from '../components/ProductList.vue'
import ProductDetail from '../views/ProductDetail.vue'
import WoodworkingShop from '../views/WoodworkingShop.vue'
import GuitarServices from '../views/GuitarServices.vue'
import CustomGuitars from '../views/CustomGuitars.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: ProductList,
  },
  {
    path: '/shop/woodworking',
    name: 'Woodworking',
    component: WoodworkingShop,
  },
  {
    path: '/shop/guitar-services',
    name: 'GuitarServices',
    component: GuitarServices,
  },
  {
    path: '/shop/custom-guitars',
    name: 'CustomGuitars',
    component: CustomGuitars,
  },
  {
    path: '/product/:slug',
    name: 'ProductDetail',
    component: ProductDetail,
    props: true,
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
