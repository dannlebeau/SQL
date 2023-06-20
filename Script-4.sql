-- Creación de la tabla "autores"
CREATE TABLE autores (
 id SERIAL PRIMARY KEY,
 nombre VARCHAR(100),
 nacionalidad VARCHAR(100)
);
-- Creación de la tabla "libros"
CREATE TABLE libros (
 id SERIAL PRIMARY KEY,
 titulo VARCHAR(100),
 autor_id INTEGER REFERENCES autores(id),
 precio NUMERIC(10, 2)
);
-- Creación de la tabla "comentarios"
CREATE TABLE comentarios (
 id SERIAL PRIMARY KEY,
 libro_id INTEGER REFERENCES libros(id),
 comentario TEXT
);
-- Inserción de datos de ejemplo en la tabla "autores"
INSERT INTO autores (nombre, nacionalidad) VALUES
 ('Gabriel García Márquez', 'Colombia'),
 ('J.K. Rowling', 'Reino Unido'),
 ('Haruki Murakami', 'Japón'),
 ('Isabel Allende', 'Chile'),
 ('Jorge Luis Borges', 'Argentina'),
 ('Mario Vargas Llosa', 'Perú'),
 ('Laura Esquivel', 'México');

-- Inserción de datos de ejemplo en la tabla "libros"
INSERT INTO libros (titulo, autor_id, precio) VALUES
 ('Cien años de soledad', 1, 19.99),
 ('Harry Potter y la piedra filosofal', 2, 14.99),
 ('Tokio blues', 3, 12.99),
 ('La casa de los espíritus', 4, 14.99),
 ('Ficciones', 5, 9.99),
 ('La ciudad y los perros', 6, 12.99),
 ('Como agua para chocolate', 7, 11.99),
 ('Crónica de una muerte anunciada', 1, 10.99),
 ('El amor en los tiempos del cólera', 1, 12.99),
 ('Paula', 4, 11.99),
 ('Conversación en La Catedral', 6, 13.99);
 
-- Inserción de datos de ejemplo en la tabla "comentarios"
INSERT INTO comentarios (libro_id, comentario) VALUES
 (1, 'Excelente libro'),
 (1, 'Me encantó la narrativa'),
 (2, 'Una historia mágica'),
 (3, 'Me transportó a Japón'),
 (4, 'Una novela fascinante'),
 (4, 'Personajes inolvidables'),
 (5, 'Cuentos magistrales'),
 (5, 'Una mente brillante. ¡Excelente!'),
 (6, 'Una historia impactante'),
 (7, 'Una mezcla perfecta de amor y cocina'),
 (9, 'Una obra maestra de la literatura'),
 (11, 'Personajes inolvidables');
