//THIS PAGE IS THE APP.JS
import React, {useEffect, useState} from "react";
import { createRoot } from "react-dom/client";
import {
  createBrowserRouter,
  RouterProvider,
  Route,
  Link,
  Outlet,
} from "react-router-dom";
import Home from './routes/Home'
import Products from './routes/Products'
import Login from './routes/Login'
import Cart from './routes/Cart'
import Navbar from "./components/Navbar" //must include the stupid space here 

const AppLayout = () => {
  return(
  <>
  <Navbar />
  <Outlet />
  </>
  )
}

const apple = "hello"
const router = createBrowserRouter([
  {
    element: <AppLayout />,
    children: [
      {
    path: "/",
    element: <Home apple={apple}/>,
  },
  {
    path: "/products",
    element: <Products />,
  },
  {
    path: "/Login",
    element: <Login />,
  },
  {
    path: "/cart",
    element: <Cart />,
      },
    ],
  }, 
]);

createRoot(document.getElementById("root")).render(
  <RouterProvider router={router} />
);