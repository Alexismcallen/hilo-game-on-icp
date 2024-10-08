import { useState } from 'react';
import { hilo_game_backend } from 'declarations/hilo_game_backend';
function App() {
  const [greeting, setGreeting] = useState('');
  function handleSubmit(event) {
    event.preventDefault();
    const name = event.target.elements.name.value;
    hilo_game_backend.greet(name).then((greeting) => {
      setGreeting(greeting);
    });
    return false;
  }
  return (
    <main>
      <img src="/logo2.svg" alt="DFINITY logo" />
      <br />
      <br />
      <form action="#" onSubmit={handleSubmit}>
        <label htmlFor="name">Enter your name: &nbsp;</label>
        <input id="name" alt="Name" type="text" />
        <button type="submit">Click Me!</button>
      </form>
      <section id="greeting">{greeting}</section>
    </main>
  );
}
export default App;
