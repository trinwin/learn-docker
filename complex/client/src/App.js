import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter as Router, Route, Link } from "react_router_dom";
import Fibs from "./Fibs";
import OtherPage from "./OtherPage";

function App() {
  return (
    <Router>
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
          <Link to="/">Home</Link>
          <Link to="/otherpage">Other Page</Link>
        </header>
        <div>
          <Route exact path="/" component={Fibs} />
          <Route exact path="/otherpage" component={OtherPage} />
        </div>
      </div>
    </Router>
  );
}

export default App;
