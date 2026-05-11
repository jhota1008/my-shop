<template>
  <v-container>
    <v-row>
      <v-col cols="12">
        <h1>Custom Woodworking</h1>
        <p class="text-subtitle-1">Handcrafted wooden pieces for your home</p>
      </v-col>
    </v-row>

    <!-- Reuse ProductList component with category filter -->
    <ProductList category="woodworking" />
  </v-container>
</template>

<script setup lang="ts">
import ProductList from '../components/ProductList.vue'
</script>

<style scoped>
/* Add any custom styles here */
</style>
