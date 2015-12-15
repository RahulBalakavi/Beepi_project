create table if not exists beepi_seller_comments (
id varchar(256) encode lzo,
seller_comment varchar(256) encode lzo
)distkey(id); 

create table if not exists beepi_car_images (
id varchar(256) encode lzo,
image varchar(256) encode lzo
)distkey(id) ;


create table if not exists beepi_car_features (
id varchar(256) encode lzo,
feature varchar(256) encode lzo
)distkey(id) ;


create table if not exists beepi_car_options (
id varchar(256) encode lzo,
option varchar(256) encode lzo
)distkey(id) ;

