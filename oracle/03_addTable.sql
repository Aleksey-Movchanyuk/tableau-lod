CONNECT TAB_SAMP/TAB_SAMP@//localhost:1521/TABLEAU;
-- sample sales table
CREATE TABLE sales (
  order_date DATE,
  order_id VARCHAR2(50),
  client VARCHAR2(100),
  amount NUMBER
);
exit;