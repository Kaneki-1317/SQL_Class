# MYSQL - Apuntes






## Comandos - Terminal
- docker ps **-->** Visualizar  Reciente
- docker ps -a **-->** Visualizar todos los archivos 
- docker start **Nombre de archivo** **-->** Inicializa el archivo seleccionado
- docker exec -it mysql_container mysql -h localhost -u root -P 3306 -p **-->** Para entrar al Mysql 
    - mysql> SHOW DATABASES; **-->** Vializar los archivos que haz creado en mysql
    - mysql> CREATE DATABASE IF NOT EXISTS `ecommerce_zapatos`; **-->** Crea una base de datos si esta no existe
    - mysql> USE `ecommerce_zapatos`; **-->** Seleciona la base de dato
    ```
    CREATE TABLE `usuarios`(
        `usuarios_id` int NOT NULL AUTO_INCREMENT,
        `nombre` VARCHAR(50) DEFAULT NULL,
        `apellido` VARCHAR(50) DEFAULT NULL,
        `correo` VARCHAR(50) DEFAULT NULL,
        PRIMARY KEY (`usuarios_id`)
    );

    CREATE TABLE `pedidos` (
        `pedido_id` int NOT NULL AUTO_INCREMENT,
        `usuarios_id` int DEFAULT NULL,
        `fecha_pedido` date DEFAULT NULL,
        `total` decimal(10,2) DEFAULT NULL,
        PRIMARY KEY (`pedido_id`),
        KEY `usuarios_id` (`usuarios_id`),
        CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`usuarios_id`)
    );

    INSERT INTO `usuarios`(`correo`, `apellido`, `nombre`) VALUES
    ('cristiandres1317@gmial.com', 'Mayorga', 'Cristian'),
    ('adrian@gmail.com', 'Ruiz', 'Adrian'),
    ('Dayana12@gmail.com', 'Barbosa', 'Dayana'),
    ('SilviaLopez@gmail.com', 'Lopez', 'Silvia'),
    ('diegoTwis@gmail.com', 'Diaz', 'Diego');

    ```
    - mysql> SELECT * FROM `usuarios` **-->** Visualizar la tabla
    - mysql> SHOW TABLES;  **-->** Visualizar las Tablas creadas 



