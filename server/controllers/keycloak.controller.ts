import { Request, Response } from 'express';

export const configure = async (req: Request, res: Response) => {

  console.log("TEST123");

  try {
    // await configureKeycloak(url, realm, clientId, clientSecret, adminUser, adminPassword);
    res.status(200).send('Keycloak configured successfully!');
  } catch (error) {
    console.log(error);
    res.status(500).send(`Error configuring Keycloak`);
  }
};

