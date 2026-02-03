<template>
  <v-container>
    <v-row>
      <v-col cols="12">
        <v-skeleton-loader v-if="loading" type="card" :loading="loading" />
        <v-alert v-else-if="error" type="error" dense>{{ error }}</v-alert>
      </v-col>

      <v-col cols="12" sm="6" md="4" v-for="product in items" :key="product.id">
        <ProductCard :product="product" @add="addToCart" />
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import ProductCard from './ProductCard.vue'
import { useCartStore } from '../stores/cart'
import { fetchProducts } from '../lib/supabase'

const items = ref<any[]>([])
const loading = ref(false)
const error = ref<string | null>(null)

const cart = useCartStore()

async function load() {
  loading.value = true
  error.value = null
  try {
    const data = await fetchProducts()
    items.value = data as any[]
  } catch (err: any) {
    console.error('Failed to load products', err)
    error.value = err?.message || String(err)
  } finally {
    loading.value = false
  }
}

function addToCart(product: any) {
  cart.addItem(product, 1)
}

onMounted(() => {
  load()
})
</script>

<style scoped>
/* small helper styles */
</style>
