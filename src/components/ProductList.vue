<template>
  <v-container>
    <v-row>
      <v-col cols="12" sm="6" md="4" v-for="product in products" :key="product.id">
        <ProductCard :product="product" @add="addToCart" />
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup lang="ts">
import ProductCard from './ProductCard.vue';
import { useCartStore } from '../stores/cart';

const props = defineProps<{ products: any[] }>();
const cart = useCartStore();

function addToCart(product: any) {
  cart.addItem(product, 1);
}
</script>

<style scoped>
/* small helper styles */
</style>
