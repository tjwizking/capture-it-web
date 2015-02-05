
-- Table: schema_migrations
CREATE TABLE schema_migrations ( 
    version VARCHAR( 255 )  NOT NULL 
);

INSERT INTO [schema_migrations] ([version]) VALUES (20141112125934);
INSERT INTO [schema_migrations] ([version]) VALUES (20141120033027);
INSERT INTO [schema_migrations] ([version]) VALUES (20141122132412);
INSERT INTO [schema_migrations] ([version]) VALUES (20141122133759);
INSERT INTO [schema_migrations] ([version]) VALUES (20141123182754);
INSERT INTO [schema_migrations] ([version]) VALUES (20141123183029);
INSERT INTO [schema_migrations] ([version]) VALUES (20141123183132);
INSERT INTO [schema_migrations] ([version]) VALUES (20141125150307);
INSERT INTO [schema_migrations] ([version]) VALUES (20141125180134);
INSERT INTO [schema_migrations] ([version]) VALUES (20141129231701);
INSERT INTO [schema_migrations] ([version]) VALUES (20141204135920);
INSERT INTO [schema_migrations] ([version]) VALUES (20141204153201);

-- Table: products
CREATE TABLE products ( 
    id                        INTEGER         PRIMARY KEY AUTOINCREMENT
                                              NOT NULL,
    pid                       VARCHAR( 15 ),
    name                      VARCHAR( 30 ),
    item_type                 VARCHAR( 3 ),
    has_options               VARCHAR( 1 ),
    size_type                 VARCHAR( 3 ),
    size                      VARCHAR( 11 ),
    has_color                 VARCHAR( 1 ),
    color                     VARCHAR( 20 ),
    in_stock                  VARCHAR( 1 ),
    stock_left                INTEGER,
    price                     INTEGER,
    for_sex                   VARCHAR( 1 ),
    has_variant               VARCHAR( 1 ),
    barcode_path_file_name    VARCHAR( 255 ),
    barcode_path_content_type VARCHAR( 255 ),
    barcode_path_file_size    INTEGER,
    barcode_path_updated_at   DATETIME,
    image_path_file_name      VARCHAR( 255 ),
    image_path_content_type   VARCHAR( 255 ),
    image_path_file_size      INTEGER,
    image_path_updated_at     DATETIME,
    last_bought               VARCHAR( 25 ),
    bought_times              INTEGER,
    last_scanned              VARCHAR( 25 ),
    scanned_times             INTEGER,
    is_active                 VARCHAR( 1 ),
    ranking                   INTEGER,
    created_at                DATETIME,
    updated_at                DATETIME 
);

INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (31, 0909090, 'Brown Leopard dress', 2, 1, 'Number Size', 6, 1, 'Brown', 1, 4, 90, 'F', 1, 'dress08.png', 'image/png', 374, '2014-11-24 11:27:10.526545', '_MG_1629.jpg', 'image/jpeg', 2595949, '2014-12-01 11:14:50.956260', null, null, null, null, 1, null, '2014-11-24 11:26:01.128813', '2014-12-01 11:14:52.702525');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (32, 'NK32452', 'Maxi Dress', 2, 1, 'Number Size', 6, 1, 'Red', 1, 4, 75, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 07:18:45.708706', 'IMG_9634.jpg', 'image/jpeg', 319843, '2014-12-01 11:40:08.359011', null, null, null, null, 1, null, '2014-12-01 07:18:47.516663', '2014-12-01 11:40:09.244214');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (33, 'NK8765', 'Vintage Print Shirt', 1, 1, 'Number Size', 6, 0, 'Cream', 1, 8, 95, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 07:28:03.449463', 'vintage_print_f.jpg', 'image/jpeg', 230335, '2014-12-01 07:28:04.043569', null, null, null, null, 1, null, '2014-12-01 07:28:04.723770', '2014-12-01 07:28:04.723770');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (34, 'NK 32434', 'Casual Shirt', 1, 0, 'Letter Size', 12, 0, 'Red', 1, 10, 75, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 10:36:06.880346', 'causal_shirt_f.jpg', 'image/jpeg', 208170, '2014-12-01 10:36:07.519402', null, null, null, null, 1, null, '2014-12-01 10:36:08.090488', '2014-12-01 10:36:08.090488');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (35, 'NK343434', 'Guy Lagos Dress', 2, 0, 'Number Size', 16, 1, 'Cream', 1, 2, 60, 'F', 0, 'dress08.png', 'image/png', 374, '2014-12-01 10:39:22.726351', 'guy_lagos_F.jpg', 'image/jpeg', 183923, '2014-12-01 10:39:23.369377', null, null, null, null, 1, null, '2014-12-01 10:39:23.969738', '2014-12-01 10:39:23.969738');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (36, 'NK4344343', '"Do  no Evil" Tee', 1, 1, 'Number Size', 6, 1, 'Red', 1, 5, 70, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 11:02:43.853902', 'IMG_9337.jpg', 'image/jpeg', 328216, '2014-12-01 11:02:44.435598', null, null, null, null, 1, null, '2014-12-01 11:02:45.269130', '2014-12-01 11:02:45.269130');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (37, 'NK2342', 'Blue Camo Sweat shirt', 1, 1, 'Number Size', 6, 1, 'Blue', 1, 5, 100, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 11:18:23.502636', 'IMG_9480.jpg', 'image/jpeg', 599675, '2014-12-01 11:18:24.033726', null, null, null, null, 1, null, '2014-12-01 11:18:24.942200', '2014-12-01 11:18:24.942200');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (38, 'NK2342342', 'Blue Black Stripped Tee', 1, 1, 'Number Size', 14, 1, 'Blue', 1, 10, 50, 'M', 1, 'dress08.png', 'image/png', 374, '2014-12-01 11:22:04.845917', 'MG_16381-470x626.jpg', 'image/jpeg', 53098, '2014-12-01 11:22:05.490163', null, null, null, null, 1, null, '2014-12-01 11:22:06.022989', '2014-12-01 11:22:06.022989');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (39, 'NK434353', 'Blue Cropped Top', 2, 1, 'Number Size', 8, 0, 'Blue', 1, 4, 75, 'F', 1, 'dress08.png', 'image/png', 374, '2014-12-01 11:36:39.495416', '_MG_1446.jpg', 'image/jpeg', 926848, '2014-12-01 11:36:40.080142', null, null, null, null, 1, null, '2014-12-01 11:36:41.548155', '2014-12-01 11:36:41.548155');
INSERT INTO [products] ([id], [pid], [name], [item_type], [has_options], [size_type], [size], [has_color], [color], [in_stock], [stock_left], [price], [for_sex], [has_variant], [barcode_path_file_name], [barcode_path_content_type], [barcode_path_file_size], [barcode_path_updated_at], [image_path_file_name], [image_path_content_type], [image_path_file_size], [image_path_updated_at], [last_bought], [bought_times], [last_scanned], [scanned_times], [is_active], [ranking], [created_at], [updated_at]) VALUES (40, 'NK2323', 'White Top', 2, 1, 'Number Size', 6, 1, 'Red', 1, 7, 55, 'F', 0, 'dress08.png', 'image/png', 374, '2014-12-01 13:53:53.821649', '_MG_1491.jpg', 'image/jpeg', 2181501, '2014-12-01 13:53:54.786292', null, null, null, null, 1, null, '2014-12-01 13:53:57.287087', '2014-12-01 13:53:57.287087');

-- Table: users
CREATE TABLE users ( 
    id                     INTEGER         PRIMARY KEY AUTOINCREMENT
                                           NOT NULL,
    email                  VARCHAR( 255 )  DEFAULT ''
                                           NOT NULL,
    encrypted_password     VARCHAR( 255 )  DEFAULT ''
                                           NOT NULL,
    reset_password_token   VARCHAR( 255 ),
    reset_password_sent_at DATETIME,
    remember_created_at    DATETIME,
    sign_in_count          INTEGER         DEFAULT 0
                                           NOT NULL,
    current_sign_in_at     DATETIME,
    last_sign_in_at        DATETIME,
    current_sign_in_ip     VARCHAR( 255 ),
    last_sign_in_ip        VARCHAR( 255 ),
    created_at             DATETIME,
    updated_at             DATETIME,
    BrandName              VARCHAR( 25 ),
    logo_file_name         VARCHAR( 255 ),
    logo_content_type      VARCHAR( 255 ),
    logo_file_size         INTEGER,
    logo_updated_at        DATETIME 
);

INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (1, 'tjwizking@gmail.com', '$2a$10$o817tUXpieWI.eIY9rEPOuZStFy28qbBwizX6Q3UyAsYHXGTaGkja', '8e8b9493c3182f8f44d8e5ff6ee4a9d373eaed27e5810491e456ce028b72ba3a', '2014-11-21 11:46:48.527715', null, 22, '2014-12-22 12:58:49.355025', '2014-12-22 12:42:34.304429', '127.0.0.1', '127.0.0.1', '2014-11-20 07:59:05.029548', '2014-12-22 12:58:49.355897', 'NACK', 'NACK-logo_white_small1.png', 'image/png', 1972, '2014-12-04 16:34:55.962375');
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (2, 'tjwizkid@gmail.com', '$2a$10$IvvaUVFgAYTynGpg95lcR.YSfCs75ROsjFkl2YOhpvkGRuUS2gFJO', null, null, null, 1, '2014-11-21 11:32:36.497138', '2014-11-21 11:32:36.497138', '127.0.0.1', '127.0.0.1', '2014-11-21 11:32:36.445912', '2014-11-21 11:32:36.498176', null, null, null, null, null);
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (3, 'tje@sfsd.d', '$2a$10$BLs3kg0dhceHTN/uR7ToJ.POMMJ3/grnLNHd/jJ49559tJpjCt6lG', null, null, null, 1, '2014-12-04 14:25:07.595755', '2014-12-04 14:25:07.595755', '127.0.0.1', '127.0.0.1', '2014-12-04 14:25:07.565418', '2014-12-04 14:25:07.597419', null, null, null, null, null);
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (4, 'tjde@sfsd.d', '$2a$10$uDxqyJGAacoh..Zj4KL8L.lHeDSWsPea82zvXV0croGkvS48IiZaa', null, null, null, 1, '2014-12-04 15:26:28.267947', '2014-12-04 15:26:28.267947', '127.0.0.1', '127.0.0.1', '2014-12-04 15:26:28.262418', '2014-12-04 15:26:28.268645', null, null, null, null, null);
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (5, 'sfsdfsdf@sdfdsfsdf.dfs', '$2a$10$Sersuvrn9/4IQfO0oU1O9OY89c.Wjf1yJHyKGCS9X3ha3K6vOKYmG', null, null, null, 1, '2014-12-04 15:27:50.066503', '2014-12-04 15:27:50.066503', '127.0.0.1', '127.0.0.1', '2014-12-04 15:27:50.057884', '2014-12-04 15:27:50.067156', 'edfsdfdsfsdfs', null, null, null, null);
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (6, 'kdfsdf@sdfsdf.sfsdf', '$2a$10$JKwZa2CEKvV19uhKm5D1LOoM2CS92FTMmakce9iqn5ce6vSDxg8BG', null, null, null, 1, '2014-12-04 16:02:07.915609', '2014-12-04 16:02:07.915609', '127.0.0.1', '127.0.0.1', '2014-12-04 16:02:07.902989', '2014-12-04 16:02:07.916401', 'dsfsdfsddsf', null, null, null, null);
INSERT INTO [users] ([id], [email], [encrypted_password], [reset_password_token], [reset_password_sent_at], [remember_created_at], [sign_in_count], [current_sign_in_at], [last_sign_in_at], [current_sign_in_ip], [last_sign_in_ip], [created_at], [updated_at], [BrandName], [logo_file_name], [logo_content_type], [logo_file_size], [logo_updated_at]) VALUES (7, 'tjasdasd@sdfsdf.sdfs', '$2a$10$t9ar0ISf4MdDqGvoCotPYey1XXAJSJM387Ccr9h.1BqU/wYNrmDHO', null, null, null, 1, '2014-12-04 16:06:13.293986', '2014-12-04 16:06:13.293986', '127.0.0.1', '127.0.0.1', '2014-12-04 16:06:13.242406', '2014-12-04 16:06:13.294624', 'dasdadasd', 'logo.png', 'image/png', 33258, '2014-12-04 16:06:12.258724');

-- Table: carts
CREATE TABLE carts ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    product_id INTEGER,
    session_id VARCHAR( 255 ),
    created_at DATETIME,
    updated_at DATETIME,
    user_id    INTEGER,
    quantity   INTEGER,
    status     VARCHAR( 1 )    DEFAULT 0 
);

INSERT INTO [carts] ([id], [product_id], [session_id], [created_at], [updated_at], [user_id], [quantity], [status]) VALUES (42, 33, '2cd30e969bd8e9464faddadd495574b1', '2014-12-02 14:49:59.708487', '2014-12-02 14:49:59.708487', 1, 1, 1);
INSERT INTO [carts] ([id], [product_id], [session_id], [created_at], [updated_at], [user_id], [quantity], [status]) VALUES (43, 35, '2cd30e969bd8e9464faddadd495574b1', '2014-12-02 14:50:08.517532', '2014-12-02 14:50:08.517532', 1, 1, 1);
INSERT INTO [carts] ([id], [product_id], [session_id], [created_at], [updated_at], [user_id], [quantity], [status]) VALUES (44, 36, '2cd30e969bd8e9464faddadd495574b1', '2014-12-02 14:50:16.170186', '2014-12-02 14:50:16.170186', 1, 1, 1);
INSERT INTO [carts] ([id], [product_id], [session_id], [created_at], [updated_at], [user_id], [quantity], [status]) VALUES (45, 32, '4e28cd5b1b970fb3a50870a4c0e454b7', '2014-12-22 12:56:10.312641', '2014-12-22 12:56:10.312641', 1, 1, 0);

-- Index: unique_schema_migrations
CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations ( 
    version 
);


-- Index: index_users_on_email
CREATE UNIQUE INDEX index_users_on_email ON users ( 
    email 
);


-- Index: index_users_on_reset_password_token
CREATE UNIQUE INDEX index_users_on_reset_password_token ON users ( 
    reset_password_token 
);


-- Index: index_carts_on_product_id
CREATE INDEX index_carts_on_product_id ON carts ( 
    product_id 
);


-- Index: index_carts_on_user_id
CREATE INDEX index_carts_on_user_id ON carts ( 
    user_id 
);

