INSERT INTO `usuarios`(`correo`, `apellido`, `nombre`) VALUES
('cristiandres1317@gmial.com', 'Mayorga', 'Cristian'),
('adrian@gmail.com', 'Ruiz', 'Adrian'),
('Dayana12@gmail.com', 'Barbosa', 'Dayana'),
('SilviaLopez@gmail.com', 'Lopez', 'Silvia'),
('diegoTwis@gmail.com', 'Diaz', 'Diego');

INSERT INTO `pedidos` (`usuarios_id`, `fecha_pedido`, `total`) VALUES
(1, '2023-10-01', 150.00),
(2, '2023-10-02', 200.00),
(1, '2023-10-03', 50.00),
(3, '2023-10-04', 300.00),
(4, '2023-10-05', 120.00),
(5, '2023-10-06', 80.90);


INSERT INTO `PedidoProductoCompuesta`(`pedido_id`, `producto_id`, `cantidad`) VALUES
(1, 1, 5),
(1, 3, 1),
(2, 5, 1),
(3, 4, 3),
(4, 7, 1),
(5, 8, 1),
(5, 9, 2),
(6, 10, 1);

UPDATE `PedidoProductoCompuesta` SET `cantidad`=100 
WHERE `pedido_id` = 1 AND `producto_id` = 1;





INSERT INTO `Producto`(`nombre`, `precio_unitario`, `precio_venta`) VALUES
('Zapato Deportivo', 75.00, 90.00),
('Zapato Casual', 60.00, 75.00),
('Bota de Cuero', 120.00, 150.00),
('Sandalia', 40.00, 55.00),
('Zapato Formal', 100.00, 130.00),
('Tenis', 80.00, 100.00),
('Mocasin', 70.00, 85.00),
('Botin', 110.00, 140.00),
('Zapatilla', 50.00, 65.00),
('Alpargata', 30.00, 45.00);

INSERT INTO `PedidoProducto`(`pedido_id`, `producto_id`, `cantidad`) VALUES
(1, 1, 5),
(1, 1, 2),
(1, 3, 1),
(1, 1, 1),
(2, 5, 1),
(3, 4, 3),
(1, 1, 2),
(4, 7, 1),
(5, 8, 1),
(5, 9, 2),
(6, 10, 1);
