/**
 * Displays an alert with a custom message.
 *
 * @returns void
 */

// Define the alert function
export function alert(): void {
  // Define the message to be displayed in the alert
  const message: string = 'If you see this alert, then your custom JavaScript script has run!';
  
  // Display the alert with the message
  window.alert(message);
}

alert();