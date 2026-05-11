import { createClient, SupabaseClient } from '@supabase/supabase-js'

const SUPABASE_URL = import.meta.env.VITE_SUPABASE_URL as string
const SUPABASE_ANON_KEY = import.meta.env.VITE_SUPABASE_ANON_KEY as string

if (!SUPABASE_URL || !SUPABASE_ANON_KEY) {
  // It's safe to run the app without env vars in dev; we'll surface errors when trying to fetch
  console.warn('Supabase environment variables are not set: VITE_SUPABASE_URL or VITE_SUPABASE_ANON_KEY')
}

export const supabase: SupabaseClient = createClient(SUPABASE_URL ?? '', SUPABASE_ANON_KEY ?? '')

export async function fetchProducts(category?: string) {
  // Fetch basic product fields and order by created_at desc
  // Optionally filter by category if provided
  let query = supabase
    .from('products')
    .select('id, title, slug, description, price_cents, images, categories')
    .order('created_at', { ascending: false })
    .limit(100)

  if (category) {
    query = query.contains('categories', [category])
  }

  const { data, error } = await query

  if (error) throw error
  return data ?? []
}

export default supabase
