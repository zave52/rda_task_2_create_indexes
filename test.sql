USE ShopDB; 

# Check if Products index was created
SELECT IFNULL( (SELECT INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'ShopDB' and TABLE_NAME = 'Products' and INDEX_NAME = 'Name' and COLUMN_NAME = 'Name') , 
 (SELECT 'Error: Index for Product.Name was not found') ); 
 
# Check if Customers index was created
SELECT IFNULL( (SELECT INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'ShopDB' and TABLE_NAME = 'Customers' and INDEX_NAME = 'Email' and COLUMN_NAME = 'Email') , 
 (SELECT 'Error: Index for Customers.Email was not found') ); 

# Check if only required indexes were created
SET @IndexCount := ( SELECT COUNT(*) FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'ShopDB'); 
SELECT IF( @IndexCount = 9, 'Only required indexes are in place', 'Error: too many or not enough indexes were created in the database');
