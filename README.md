## HiLo Game on Internet Computer Protocol (ICP)

This project is a HiLo game built on the Internet Computer Protocol (ICP), using Motoko for backend and React for frontend. Players can interact with the smart contract to guess a number, with the goal of determining whether the next number will be higher or lower.

## Features

- Guess if the next number will be higher or lower
- Score management
- Connect with Internet Identity for authentication
- Leaderboard tracking top players
- Beautiful and user-friendly interface
- Background music and sound effects for an enhanced experience

## Stack

- **Backend:** [Motoko](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity) (smart contracts)
- **Frontend:** [React](https://reactjs.org/)
- **ICP Tools:** [DFX](https://internetcomputer.org/docs/current/developer-docs/build/install-upgrade-remove) (version 0.23.0)
- **Wallet & Authentication:** Internet Identity
- **Styling:** CSS, Anime-styled background

## Prerequisites

Before running this project, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (latest version)
- [DFX](https://internetcomputer.org/docs/current/developer-docs/build/install-upgrade-remove) (version 0.23.0)
- A local or networked Internet Computer setup
- [Internet Identity](https://smartcontracts.org/docs/ic-identity-guide/what-is-ic-identity.html) for authentication

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Alexismcallen/hilo-game-on-icp.git
cd hilo-game-on-icp/hilo_game
```

### 2. Install Dependencies

Run the following command to install the necessary packages:

```bash
npm install
```

### 3. Setup DFX and Internet Identity

Start your local Internet Computer replica:

```bash
dfx start --clean
```

Deploy the canisters and start the backend:

```bash
dfx deploy
```

### 4. Running the Application

Once the canisters are deployed, you can run the frontend locally:

```bash
npm start
```

This will open the application in your browser at `http://localhost:3000`.

### 5. Connect Wallet and Start Playing

Once the application is loaded, use Internet Identity to sign in and start playing the HiLo game!

## Project Structure

```
/hilo_game
│
├── /src
│   ├── /frontend    - Contains the React frontend code
│   ├── /backend     - Contains the Motoko smart contract code
│   └── /assets      - Game assets such as images and sound
├── /build           - Compiled build files for deployment
├── dfx.json         - DFX configuration file
├── package.json     - Node.js dependencies and scripts
└── README.md        - Project documentation
```

## Customization and Development

If you wish to customize the game:

- **Smart Contract Logic:** Modify the Motoko files under the `src/backend` directory.
- **Frontend Interface:** Update the React components in the `src/frontend` directory to change the game's look and feel.
- **Assets:** Customize images, sounds, and other assets in the `src/assets` folder.

## Known Issues

- Some UI components may not render correctly on mobile devices. A fix is in progress.
- Internet Identity integration may not work smoothly on some browsers. Ensure you are using the latest version of your browser.

## Contributing

Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request for any changes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.
