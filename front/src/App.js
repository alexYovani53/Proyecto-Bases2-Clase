import './App.css';

import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Home from './screens/home';
import LogIn from './screens/login';
import Grafic from './screens/grafic'

function App() {
  return (
    <BrowserRouter >
    <Routes >

      <Route exact path="/" element={<LogIn />} />
      <Route exact path="/home" element={<Home />} />
      <Route exact path="/graph" element={<Grafic />} />

    </Routes>
  </BrowserRouter>
  );
}

export default App;
