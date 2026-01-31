-- Migration 0001: create products and orders tables
-- This file was created from supabase/schema.sql

-- Ensure uuid and crypto functions exist. Some Supabase/Postgres setups prefer pgcrypto's gen_random_uuid()
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- products table
CREATE TABLE IF NOT EXISTS public.products (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  slug text UNIQUE NOT NULL,
  description text,
  price_cents integer NOT NULL,
  currency text NOT NULL DEFAULT 'USD',
  inventory integer DEFAULT 0,
  sku text,
  metadata jsonb,
  images jsonb DEFAULT '[]'::jsonb,
  categories text[],
  featured boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- orders table
CREATE TABLE IF NOT EXISTS public.orders (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid,
  customer_email text,
  total_cents integer NOT NULL,
  currency text NOT NULL DEFAULT 'USD',
  stripe_payment_intent text,
  stripe_session_id text,
  status text NOT NULL DEFAULT 'pending',
  shipping_address jsonb,
  items jsonb NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_orders_stripe_session_id ON public.orders (stripe_session_id);
