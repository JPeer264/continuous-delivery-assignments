import express, { Router } from 'express';

const app    = express();
const router = Router();

app.use(router);

router.all('/', (req, res, next) => {
    res.send('Hello World!');
});

app.listen(3000, () => console.log('This app is container isolated.'));
