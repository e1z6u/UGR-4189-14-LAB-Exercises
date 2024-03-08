// Exercise 1

import 'dart:async';
import 'dart:math';

// Function to simulate a network call and fetch a random quote after a delay
Future<String> fetchRandomQuote() async {
  // Simulate a network delay using a Future.delayed
  await Future.delayed(Duration(seconds: 2));

  // Array of random quotes
  List<String> quotes = [
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "Believe you can and you're halfway there. -Theodore Roosevelt",
    "It always seems impossible until it's done. - Nelson Mandela",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
  ];

  // Return a random quote
  return quotes[Random().nextInt(quotes.length)];
}

void main() async {
  // Use async and await to wait for the quote before printing it
  String quote = await fetchRandomQuote();

  // Display the random quote
  print("Random Quote: $quote");
}
