copy beepi_car_metadata (id,vin_ss,heading_ss,price_fs,miles_fs,stock_no_ss,year_is,make_ss,make_orig_ss,model_ss,model_orig_ss,trim_ss,trim_orig_ss,vehicle_type_ss,vehicle_type_orig_ss,body_type_ss,body_type_orig_ss,body_subtype_ss,body_subtype_orig_ss,drivetrain_ss,drivetrain_orig_ss,fuel_type_ss,fuel_type_orig_ss,engine_ss,engine_orig_ss,engine_block_ss,engine_block_orig_ss,engine_size_ss,engine_size_orig_ss,engine_measure_ss,engine_measure_orig_ss,engine_aspiration_ss,engine_aspiration_orig_ss,transmission_ss,transmission_orig_ss,speeds_is,speeds_orig_ss,doors_is,doors_orig_ss,cylinders_is,cylinders_orig_ss,color_ss,interior_color_ss,exterior_color_ss,taxonomy_vin_ss,scraped_at_dts,status_date_dts,touch_count_is,source_ss,domain_id_ls,more_info_ss,zip_is,latitude_fs,longitude_fs,address_ss,city_ss,city_state_ss,city_state_zip_ss,county_ss,state_ss,street_ss,area_ss,seller_type_ss,seller_email_ss,seller_phone_ss,seller_name_ss,seller_name_orig_ss,aws_ss,photo_url_ss,listing_type_ss,is_taxonomy_enriched_is,is_real_vin_is,is_duplicate_is,is_grouped_is,grouped_at_dts,new_vin_is,group_id_ls,robot_id_ls,stage2_id_ls,robot_cycle_id_ls,car_street_ss,car_address_ss,car_city_ss,car_state_ss,car_zip_is)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_main.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter ','
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;


copy beepi_seller_comments (id, seller_comment)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_comment.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;


copy beepi_car_images (id, image)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_image.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

copy beepi_car_features (id, feature)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_feature.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

copy beepi_car_options (id, option)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_options.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

copy beepi_car_metadata (id,vin_ss,heading_ss,price_fs,miles_fs,stock_no_ss,year_is,make_ss,make_orig_ss,model_ss,model_orig_ss,trim_ss,trim_orig_ss,vehicle_type_ss,vehicle_type_orig_ss,body_type_ss,body_type_orig_ss,body_subtype_ss,body_subtype_orig_ss,drivetrain_ss,drivetrain_orig_ss,fuel_type_ss,fuel_type_orig_ss,engine_ss,engine_orig_ss,engine_block_ss,engine_block_orig_ss,engine_size_ss,engine_size_orig_ss,engine_measure_ss,engine_measure_orig_ss,engine_aspiration_ss,engine_aspiration_orig_ss,transmission_ss,transmission_orig_ss,speeds_is,speeds_orig_ss,doors_is,doors_orig_ss,cylinders_is,cylinders_orig_ss,color_ss,interior_color_ss,exterior_color_ss,taxonomy_vin_ss,scraped_at_dts,status_date_dts,touch_count_is,source_ss,domain_id_ls,more_info_ss,zip_is,latitude_fs,longitude_fs,address_ss,city_ss,city_state_ss,city_state_zip_ss,county_ss,state_ss,street_ss,area_ss,seller_type_ss,seller_email_ss,seller_phone_ss,seller_name_ss,seller_name_orig_ss,aws_ss,photo_url_ss,listing_type_ss,is_taxonomy_enriched_is,is_real_vin_is,is_duplicate_is,is_grouped_is,grouped_at_dts,new_vin_is,group_id_ls,robot_id_ls,stage2_id_ls,robot_cycle_id_ls,car_street_ss,car_address_ss,car_city_ss,car_state_ss,car_zip_is)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_main.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter ','
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;


copy beepi_seller_comments (id, seller_comment)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_comment.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;


copy beepi_car_images (id, image)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_image.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

copy beepi_car_features (id, feature)
FROM 's3://beepi-or/companies_csv/tesla_2015-07-14_feature.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

copy beepi_car_options (id, option)
FROM 's3://beepi-or/companies_csv/audi_2015-07-14_options.csv'
CREDENTIALS 'aws_access_key_id=AKIAJNVJ7LDHXEOMH7GQ;aws_secret_access_key=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' 
delimiter '|'
region as 'us-west-2'
maxerror 10000
emptyasnull
truncatecolumns;

