<template>
  <v-container>
    <v-row>
      <v-col cols="12">
        <h1>Custom Guitars</h1>
        <p class="text-subtitle-1">Build your dream guitar from scratch</p>
      </v-col>
    </v-row>

    <!-- Reuse ProductList component with guitar category filter -->
    <ProductList category="guitar" />

    <!-- ADVANCED TODO: Guitar Builder Interface -->
    <!-- IDEAS for future implementation:
      - Step-by-step wizard for choosing:
        * Body shape (Stratocaster, Telecaster, Les Paul style, etc.)
        * Wood type (Alder, Ash, Mahogany, Maple)
        * Neck profile (C-shape, V-shape, U-shape)
        * Fretboard (Rosewood, Maple, Ebony)
        * Pickups (Single-coil, Humbucker, P90)
        * Hardware (Bridge, Tuners, Nut material)
        * Finish (Solid color, Natural, Burst, Custom)
      - Live price calculator based on selections
      - Preview image that updates based on choices (advanced!)
      - Save configuration and add to cart
    -->
  </v-container>
</template>

<script setup lang="ts">
import ProductList from '../components/ProductList.vue'
</script>

<style scoped>
/* Add any custom styles here */
</style>
