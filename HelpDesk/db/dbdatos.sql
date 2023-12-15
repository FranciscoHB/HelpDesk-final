USE db;

INSERT INTO usuarios (id, nombre, apellido1, apellido2, email, contrasenya, rol_tipo, fecha_creacion, fecha_modificacion, fecha_eliminacion, estado) VALUES
('1', 'Francisco', 'Hormigos', 'Baltasar', 'franciscohb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'administrador', '2023-11-06 19:46:22', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 1),
('2', 'Jorge', 'Segovia', 'Cajal', 'jorgesc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e','administrador', '2023-11-06 19:46:22', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 1),
('3', 'Arturo', 'Alonso', 'López', 'arturo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'usuario', '2023-11-06 19:46:22', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 1),
('4', 'Pepe', 'Jimenez', 'Sanchez', 'pepe@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'usuario', '2023-11-06 19:46:22', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 1);


# Insertamos datos en la tabla categoría
INSERT INTO categoria (id, nombre) VALUES
(1, 'Motor/Transmisión'),
(2, 'Eléctricos'),
(3, 'Frenos y Suspensión'),
(4, 'Neumáticos'),
(5, 'Otros');

# Insertamos datos en la tabla caso
INSERT INTO caso (id, usuario_id, categoria_id, titulo, descripcion, estado) VALUES
(NULL, '1', '1', 'Ruido Extraño al Arrancar.', 'luces delanteras y traseras de su vehículo parpadean de manera intermitente mientras conduce.', '1'),
(NULL, '3', '2', 'Luces Intermitentes al Conducir', ' El usuario experimenta dificultades al cambiar de marcha, especialmente al intentar pasar de marcha baja a marcha alta. ', '1'),
(NULL, '3', '3', 'Chirrido al Frenar.', 'chirrido agudo cada vez que aplica los frenos.', '1'),
(NULL, '4', '2', 'Falla en el Sistema de Encendido.', ' dificultades para encender el vehículo.', '1'),
(NULL, '4', '4', 'Pinchazo en la Rueda Trasera Izquierda.', 'pinchazo en la rueda trasera izquierda mientras conducía.', '1'),
(NULL, '4', '1', 'Pérdida de Potencia en Carretera.', ' pérdida notable de potencia mientras conduce en la carretera', '1'),
(NULL, '3', '1', 'Olor a Humo durante la Marcha', 'olor a humo proveniente del compartimiento del motor.', '2');

# Insertamos datos en la tabla comentarios
INSERT INTO comentarios (id, usuario_id, caso_id, comentario, fecha_creacion_comentario) VALUES
(NULL, '3', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2023-01-01 00:00:00'),
(NULL, '4', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2023-01-01 00:00:00'),
(NULL, '2', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2023-01-01 00:00:00'),
(NULL, '3', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2023-01-01 00:00:00'),
(NULL, '3', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2023-01-01 00:00:00');
