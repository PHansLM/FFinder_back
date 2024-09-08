const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const { Pool } = require('pg');

const app = express();
app.use(cors());
app.use(bodyParser.json());

const conexion = new Pool({
    user: 'postgres', 
    host: 'localhost', 
    database: 'FestFinder', 
    password: 'password',
    port: 5432, 
  });


  app.post('/registrar_usuario', async (req, res) => {
    const { name, email, telephone, password } = req.body;
  
    try {
      const result = await conexion.query(
        'INSERT INTO usuario (nombre, email, telefono, pass) VALUES ($1, $2, $3, $4) RETURNING *',
        [name, email, telephone, password]
      );
      res.status(201).json(result.rows[0]); 
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error al registrar usuario' });
    }
  });

  app.post('/logear_usuario', async (req, res) => {
    const { email, password } = req.body;
  
    try {
      const result = await conexion.query('SELECT * FROM usuario WHERE email = $1', [email]);
  
      if (result.rows.length === 0) {
        return res.status(400).json({ message: 'Usuario no encontrado' });
      }
  
      const user = result.rows[0];
  
      if (user.pass !== password) {
        return res.status(401).json({ message: 'Contraseña incorrecta' });
      }
  
      const { id, nombre, telefono } = user;
      res.json({ id, nombre, email, telefono });
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error en el servidor' });
    }
  });

  app.listen(3000, () => {
    console.log('Escuchando el puerto 3000');
  });