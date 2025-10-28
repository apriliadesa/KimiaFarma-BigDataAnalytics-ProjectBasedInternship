-- Create the analysis_table in kimia_farma dataset
CREATE OR REPLACE TABLE `rakamin-kf-analytics-475414.kimia_farma.kf_analysis_table`
AS

-- Build the base data 
WITH base AS (
  SELECT
    ft.transaction_id,
    ft.date,
    ft.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    ft.customer_name,
    p.product_id,
    p.product_name,
    p.price AS actual_price,
    ft.discount_percentage,

    -- Determine gross profit percentage based on product price
    CASE 
      WHEN p.price <= 50000 THEN 0.1
      WHEN p.price > 50000 AND p.price <=100000 THEN 0.15
      WHEN p.price > 100000 AND p.price <=300000 THEN 0.2
      WHEN p.price > 300000 AND p.price <=500000 THEN 0.25
      WHEN p.price > 500000 THEN 0.3
    END
      AS persentase_gross_laba,

    -- Calculate Net Sales after discount
    p.price * (1 - (ft.discount_percentage/100)) AS nett_sales,
    ft.rating AS rating_transaksi

  FROM `rakamin-kf-analytics-475414.kimia_farma.kf_final_transaction` ft 
  JOIN `rakamin-kf-analytics-475414.kimia_farma.kf_kantor_cabang` kc ON ft.branch_id = kc.branch_id
  JOIN `rakamin-kf-analytics-475414.kimia_farma.kf_product` p ON ft.product_id = p.product_id)
  
  
  -- Select all required fields
  SELECT 
    transaction_id,
    date,
    branch_id,
    branch_name,
    kota,
    provinsi,
    rating_cabang,
    customer_name,
    product_id,
    product_name,
    actual_price,
    discount_percentage,
    persentase_gross_laba, 
    nett_sales,

    -- Calculate Net Profit based on Net Sales and Gross Profit %
    nett_sales * persentase_gross_laba AS nett_profit,

    rating_transaksi

  FROM base;