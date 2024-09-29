import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import List "mo:base/List";
actor HiLoGame {
    stable var leaderboard : [(Text, Nat)] = [];
    var current_number : Nat = Nat.div(Nat.random(), 1000000000);
    // Store user guesses
    var guesses : [(Text, Nat)] = [];
    public query func get_current_number() : async Nat {
        return current_number;
    };
    public func make_guess(player : Text, guess : Nat) : async Text {
        if (guess > current_number) {
            guesses := List.cons((player, guess), guesses);
            return "Too High!";
        } else if (guess < current_number) {
            guesses := List.cons((player, guess), guesses);
            return "Too Low!";
        } else {
            guesses := List.cons((player, guess), guesses);
            leaderboard := List.cons((player, Nat.add(guess, 1)), leaderboard);
            current_number := Nat.div(Nat.random(), 1000000000);
            return "Correct! Starting a new game.";
        }
    };
    public query func get_leaderboard() : async [(Text, Nat)] {
        return leaderboard;
    }
};
