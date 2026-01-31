<template>
  <v-card class="ma-2" outlined>
    <v-img :src="imageUrl" height="200" v-if="imageUrl" />
    <v-card-title>{{ product.title }}</v-card-title>
    <v-card-subtitle v-if="product.sku">SKU: {{ product.sku }}</v-card-subtitle>
    <v-card-text>
      <div v-if="product.description" class="text-body-2">{{ product.description }}</div>
      <div class="mt-2 font-weight-medium">{{ formattedPrice }}</div>
    </v-card-text>
    <v-card-actions>
      <v-btn color="primary" @click="onAdd">Add to cart</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script setup lang="ts">
import { computed } from 'vue';

const props = defineProps<{ product: any }>();
const emit = defineEmits<{ (e: 'add', product: any): void }>();

const imageUrl = computed(() => props.product?.images?.[0]?.url || '');

function centsToDollars(cents: number) {
  if (typeof cents !== 'number') return '';
  return (cents / 100).toFixed(2);
}

const formattedPrice = computed(() => {
  const cents = props.product?.price_cents ?? 0;
  return `$${centsToDollars(cents)}`;
});

function onAdd() {
  emit('add', props.product);
}
</script>

<style scoped>
.v-card-title { white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
</style>
