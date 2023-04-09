CONNECT TAB_SAMP/TAB_SAMP@//localhost:1521/TABLEAU;
-- sample sales table
INSERT ALL
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-10', 'YYYY-MM-DD'), '10-1-1', 'Abc Corp Inc', 200)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-11', 'YYYY-MM-DD'), '11-1-1', 'Burton and Davis', 100)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-12', 'YYYY-MM-DD'), '12-1-1', 'Case Foundation Co', 100)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-10', 'YYYY-MM-DD'), '10-1-1', 'Abc Corp Inc', 400)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-11', 'YYYY-MM-DD'), '11-1-1', 'Burton and Davis', 300)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-12', 'YYYY-MM-DD'), '12-1-1', 'Case Foundation Co', 500)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-01-20', 'YYYY-MM-DD'), '20-1-1', 'Abc Corp Inc', 300)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-10', 'YYYY-MM-DD'), '10-2-1', 'Abc Corp Inc', 50)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-11', 'YYYY-MM-DD'), '11-2-1', 'Burton and Davis', 600)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-12', 'YYYY-MM-DD'), '12-2-1', 'Case Foundation Co', 1000)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-10', 'YYYY-MM-DD'), '10-2-1', 'Abc Corp Inc', 250)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-11', 'YYYY-MM-DD'), '11-2-1', 'Burton and Davis', 400)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-12', 'YYYY-MM-DD'), '12-2-1', 'Case Foundation Co', 1300)
  INTO sales (order_date, order_id, client, amount) VALUES (TO_DATE('2017-02-20', 'YYYY-MM-DD'), '20-2-1', 'Burton and Davis', 800)
SELECT * FROM dual;
COMMIT;
exit;