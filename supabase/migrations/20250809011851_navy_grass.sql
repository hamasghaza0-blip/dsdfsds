/*
  # Add new customers from CSV data

  1. New Records
    - Adding 27 new customer records from CSV file
    - Records include customer names, mobile numbers, line types, charging dates, payment status, monthly prices, and renewal status
    - Line type is 60 for all new customers
    - Some records have missing payment status, monthly price, or renewal status (will use defaults)

  2. Data Processing
    - Converting date format from "d-Mon" to proper date format assuming 2025
    - Setting default values for missing fields
    - Ensuring data consistency with existing schema
*/

-- Insert new customers from CSV data
INSERT INTO cardinfo (id, customer_name, mobile_number, line_type, charging_date, payment_status, monthly_price, renewal_status) VALUES
(79, '7ossam', 1119022947, 60, '2025-08-05', 'دفع', 275, 'لم يتم'),
(80, '7ossam', 1125727842, 60, '2025-08-05', 'دفع', 275, 'لم يتم'),
(81, '7ossam', 1148615687, 60, '2025-08-01', 'دفع', 275, 'لم يتم'),
(82, 'abo selem', 1507708813, 60, '2025-07-30', 'لم يدفع', 1500, 'لم يتم'),
(83, 'abo selem', 1507708821, 60, '2025-07-29', 'لم يدفع', NULL, 'لم يتم'),
(84, 'abo selem', 1507708873, 60, '2025-07-30', 'لم يدفع', NULL, 'لم يتم'),
(85, 'abo selem', 1507708875, 60, '2025-07-30', 'لم يدفع', NULL, 'لم يتم'),
(86, 'abo selem', 1508808871, 60, '2025-07-29', 'لم يدفع', NULL, 'لم يتم'),
(87, 'abo selem', 1148340194, 60, '2025-08-05', 'لم يدفع', NULL, 'لم يتم'),
(88, 'abo selem', 1159210913, 60, '2025-08-05', 'لم يدفع', NULL, 'لم يتم'),
(89, 'abo selem', 1501900772, 60, '2025-08-31', 'لم يدفع', NULL, 'لم يتم'),
(90, 'abo selem', 1501700688, 60, '2025-07-25', 'لم يدفع', NULL, 'لم يتم'),
(91, 'abo selem', 1108958468, 60, NULL, 'لم يدفع', NULL, 'لم يتم'),
(92, 'abo selem', 1156361393, 60, NULL, 'لم يدفع', NULL, 'لم يتم'),
(93, 'abo selem', 1148487150, 60, NULL, 'لم يدفع', NULL, 'لم يتم'),
(94, 'abo selem', 1140875800, 60, '2025-08-03', 'لم يدفع', NULL, 'لم يتم'),
(95, 'ahmed eldeeb', 1149904862, 60, '2025-07-30', 'لم يدفع', NULL, 'لم يتم'),
(96, 'ahmed eldeeb', 1149923028, 60, '2025-07-30', 'لم يدفع', NULL, 'لم يتم'),
(97, 'hamada zalabany', 1507708849, 60, '2025-07-24', 'لم يدفع', NULL, 'لم يتم'),
(98, 'mbadr', 1204612686, 60, '2025-08-08', 'دفع', NULL, 'لم يتم'),
(99, 'mohammed magdy', 1220341335, 60, '2025-08-08', 'دفع', 275, 'لم يتم'),
(100, 'mohammed magdy', 1501900667, 60, '2025-07-29', 'دفع', 275, 'لم يتم'),
(101, 'mohammed magdy', 1148342935, 60, '2025-08-06', 'دفع', 275, 'لم يتم'),
(102, 'mohammed taha', 1156982564, 60, '2025-08-01', 'دفع', 250, 'لم يتم'),
(103, 'mohammed zawya', 1159513703, 60, '2025-08-07', 'لم يدفع', NULL, 'لم يتم'),
(104, 'saeed zidan', 1508804088, 60, '2025-07-30', 'لم يدفع', NULL, 'لم يتم'),
(105, 'sameh saeed', 1501700664, 60, '2025-07-29', 'لم يدفع', NULL, 'لم يتم')
ON CONFLICT (id) DO UPDATE SET
  customer_name = EXCLUDED.customer_name,
  mobile_number = EXCLUDED.mobile_number,
  line_type = EXCLUDED.line_type,
  charging_date = EXCLUDED.charging_date,
  payment_status = EXCLUDED.payment_status,
  monthly_price = EXCLUDED.monthly_price,
  renewal_status = EXCLUDED.renewal_status;