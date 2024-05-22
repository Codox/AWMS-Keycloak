import express from 'express';
import path from 'path';
import bodyParser from 'body-parser';
import testRoutes from "./routes/test.routes";

const app = express();
const port = process.env.PORT || 5000;
const router = express.Router();

app.use('/api/keycloak', testRoutes);

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '../client/build')));

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../client/build', 'index.html'));
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
