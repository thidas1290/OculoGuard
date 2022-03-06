import { initializeApp } from "firebase/app";

const credentials = {
  apiKey: process.env.API_KEY,
  authDomain: "oculoguard.firebaseapp.com",
  projectId: "oculoguard",
  storageBucket: "oculoguard.appspot.com",
  messagingSenderId: "554127335861",
  appId: "1:554127335861:web:12503480cfd189145ff9fc",
  measurementId: "G-LESJ69QM8L",
};

const app = initializeApp(credentials);

export default app;