-- Seed file: sample products for guitar & woodworking shop
-- Run this in the Supabase SQL editor to populate your products table with demo data

-- Clear existing products (optional - comment out if you want to keep existing data)
-- DELETE FROM public.products;

-- Insert sample guitar and woodworking products
INSERT INTO public.products (title, slug, description, price_cents, currency, inventory, sku, images, categories, featured) VALUES
(
  'Electric Guitar - Telecaster Style',
  'electric-guitar-telecaster',
  'Classic telecaster-style electric guitar with maple neck and alder body. Perfect tone for blues and rock.',
  89900,
  'USD',
  5,
  'GTR-002',
  '[{"url": "/vite.svg", "alt": "Electric Guitar", "order": 1}]'::jsonb,
  ARRAY['guitars', 'electric'],
  true
),
(
  'Walnut Cutting Board',
  'walnut-cutting-board',
  'Premium edge-grain walnut cutting board. Hand-finished with food-safe mineral oil. Measures 12" x 18" x 1.5".',
  8500,
  'USD',
  12,
  'WW-001',
  '[{"url": "/vite.svg", "alt": "Walnut Cutting Board", "order": 1}]'::jsonb,
  ARRAY['woodworking', 'kitchen'],
  false
),
(
  'Charcuterie Board Set',
  'charcuterie-board-set',
  'Beautiful serving board set made from cherry and maple wood. Includes knife and serving utensils. Perfect for entertaining.',
  6500,
  'USD',
  8,
  'WW-003',
  '[{"url": "/vite.svg", "alt": "Charcuterie Board", "order": 1}]'::jsonb,
  ARRAY['woodworking', 'kitchen', 'gifts'],
  false
),
(
  'Mini Guitar Display Model',
  'mini-guitar-display',
  'Handmade miniature guitar replica, perfect for display. Features real strings and detailed craftsmanship. Approximately 12" tall.',
  4500,
  'USD',
  10,
  'GTR-003',
  '[{"url": "/vite.svg", "alt": "Mini Guitar", "order": 1}]'::jsonb,
  ARRAY['guitars', 'gifts', 'display'],
  false
),
(
  'Custom Guitar Neck',
  'custom-guitar-neck',
  'Hand-carved guitar neck in maple or rosewood. Custom inlays and radius available. Made to order.',
  35900,
  'USD',
  0,
  'GTR-004',
  '[{"url": "/vite.svg", "alt": "Guitar Neck", "order": 1}]'::jsonb,
  ARRAY['guitars', 'parts'],
  false
),
(
  'Wooden Phone Stand',
  'wooden-phone-stand',
  'Elegant phone/tablet stand crafted from oak. Adjustable angle, perfect for your desk or bedside table.',
  2900,
  'USD',
  15,
  'WW-004',
  '[{"url": "/vite.svg", "alt": "Phone Stand", "order": 1}]'::jsonb,
  ARRAY['woodworking', 'desk', 'gifts'],
  false
);

-- Verify the insert
SELECT id, title, price_cents, inventory FROM public.products ORDER BY created_at DESC;
