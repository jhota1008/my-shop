<template>
  <v-container>
    <v-row>
      <!-- Back button -->
      <v-col cols="12">
        <!-- TODO: Add a back button that navigates to the home page -->
        <!-- HINT: Use router.back() or router.push('/') -->
      </v-col>

      <!-- Image Gallery Column -->
      <v-col cols="12" md="6">
        <!-- TODO: Create a large main image display -->
        <!-- HINT: Use v-img with the current selected image -->
        
        <!-- TODO: Create thumbnail gallery below main image -->
        <!-- HINT: Use v-row with smaller v-img cards that are clickable -->
        <!-- HINT: Track selected image index in a ref() -->
      </v-col>

      <!-- Product Info Column -->
      <v-col cols="12" md="6">
        <!-- TODO: Display product title -->
        
        <!-- TODO: Display product price (remember it's in cents!) -->
        <!-- HINT: Format as currency: $XX.XX -->
        
        <!-- TODO: Display product description -->
        
        <!-- TODO: Display product SKU if available -->
        
        <!-- Product Options/Preferences Section -->
        <!-- TODO: Add a section for product customization options -->
        <!-- IDEAS: 
          - Color picker (v-color-picker)
          - Size dropdown (v-select)
          - Quantity stepper (v-text-field with type="number")
          - Custom text engraving input (v-text-field)
          - Finish options (v-radio-group or v-select)
        -->
        
        <!-- TODO: Add quantity selector -->
        <!-- HINT: Use v-text-field with type="number" or custom +/- buttons -->
        
        <!-- TODO: Add "Add to Cart" button -->
        <!-- HINT: Import and use useCartStore() -->
        <!-- HINT: Consider the selected options when adding to cart -->
        
        <!-- TODO: Display inventory status -->
        <!-- HINT: Show "In Stock" / "Low Stock" / "Out of Stock" based on inventory -->
      </v-col>
    </v-row>

    <!-- Additional Details Section -->
    <v-row class="mt-8">
      <v-col cols="12">
        <!-- TODO: Add tabs for additional information -->
        <!-- IDEAS:
          - Description tab (full detailed description)
          - Specifications tab (dimensions, materials, etc.)
          - Shipping info tab
          - Reviews tab (future feature)
        -->
        <!-- HINT: Use v-tabs and v-tab-item -->
      </v-col>
    </v-row>

    <!-- Related Products Section (Advanced Challenge) -->
    <!-- TODO: Show related products from the same category -->
    <!-- HINT: Fetch products with matching categories from Supabase -->
  </v-container>
</template>

<script setup lang="ts">
import { ref, onMounted, computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useCartStore } from '../stores/cart'
// TODO: Import supabase client to fetch product by ID or slug

const route = useRoute()
const router = useRouter()
const cart = useCartStore()

// TODO: Get product ID or slug from route params
// HINT: const productId = route.params.id

// TODO: Create refs for component state
// const product = ref<any>(null)
// const loading = ref(false)
// const error = ref<string | null>(null)
// const selectedImageIndex = ref(0)
// const quantity = ref(1)

// TODO: Create refs for product options/preferences
// const selectedColor = ref('')
// const selectedSize = ref('')
// const customText = ref('')

// TODO: Create computed property for selected image
// const selectedImage = computed(() => { ... })

// TODO: Create function to fetch product from Supabase
// async function loadProduct() {
//   // Fetch product by ID or slug
//   // Handle loading and error states
// }

// TODO: Create function to change selected image
// function selectImage(index: number) { ... }

// TODO: Create function to add product to cart with options
// function addToCart() {
//   // Validate quantity and required options
//   // Add to cart with selected preferences
//   // Show success message (optional: use v-snackbar)
// }

// TODO: Call loadProduct when component mounts
// onMounted(() => { ... })
</script>

<style scoped>
/* TODO: Add custom styles */
/* IDEAS:
  - Hover effects on thumbnails
  - Transition animations for image gallery
  - Custom styling for option selectors
*/
</style>
