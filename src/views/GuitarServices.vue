<template>
  <v-container>
    <v-row>
      <v-col cols="12">
        <h1>Guitar Services</h1>
        <p class="text-subtitle-1">Expert repairs, setups, and modifications</p>
      </v-col>
    </v-row>

    <!-- Reuse ProductList component with service category filter -->
    <ProductList category="service" />
  </v-container>
</template>

<script setup lang="ts">
import ProductList from '../components/ProductList.vue'
</script>

<style scoped>
/* Add any custom styles here */
</style>
