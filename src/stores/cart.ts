import { defineStore } from 'pinia';

type CartItem = {
  productId: string;
  title: string;
  price_cents: number;
  quantity: number;
  image?: string;
};

export const useCartStore = defineStore('cart', {
  state: () => ({
    items: [] as CartItem[],
  }),
  getters: {
    itemCount: (state) => state.items.reduce((s, i) => s + i.quantity, 0),
    subtotalCents: (state) => state.items.reduce((s, i) => s + i.price_cents * i.quantity, 0),
  },
  actions: {
    addItem(product: any, qty = 1) {
      const existing = this.items.find((i) => i.productId === product.id);
      if (existing) {
        existing.quantity += qty;
      } else {
        this.items.push({
          productId: product.id,
          title: product.title,
          price_cents: product.price_cents,
          quantity: qty,
          image: product.images?.[0]?.url,
        });
      }
    },
    removeItem(productId: string) {
      this.items = this.items.filter((i) => i.productId !== productId);
    },
    updateQuantity(productId: string, qty: number) {
      const it = this.items.find((i) => i.productId === productId);
      if (it) it.quantity = qty;
    },
    clear() {
      this.items = [];
    },
  },
});

export default useCartStore;
