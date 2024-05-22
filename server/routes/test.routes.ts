import express from "express";
import {configure} from "../controllers/keycloak.controller";

const router = express.Router();

router.get('/configure', configure);

export default router;
