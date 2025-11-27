/**
 * Entropy Color Theme - JavaScript Syntax Preview
 * Demonstrates how different syntax elements appear in the theme.
 */

// Constants
const MAX_RETRIES = 3;
const DEFAULT_TIMEOUT = 30000;
const DEBUG = true;

// Class definition
class User {
  /**
   * Creates a new User instance
   * @param {number} id - User ID
   * @param {string} name - User name
   * @param {string} email - User email
   */
  constructor(id, name, email) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.isActive = true;
    this._createdAt = new Date();
  }

  /**
   * Validate the user's email address
   * @returns {boolean} True if email is valid
   */
  validateEmail() {
    // TODO: Implement proper email validation
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(this.email);
  }

  /**
   * Get user display name
   * @returns {string} Formatted user name
   */
  toString() {
    return `User(id=${this.id}, name='${this.name}')`;
  }
}

// Arrow function with destructuring
const calculateMetrics = (data) => {
  if (!data || data.length === 0) {
    return { mean: 0, max: 0, min: 0, count: 0 };
  }

  const sum = data.reduce((acc, val) => acc + val, 0);
  const mean = sum / data.length;

  return {
    mean,
    max: Math.max(...data),
    min: Math.min(...data),
    count: data.length,
  };
};

// Async/await example
async function fetchUserData(userId) {
  try {
    const response = await fetch(`https://api.example.com/users/${userId}`);

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error fetching user data:', error);
    return null;
  }
}

// Generator function
function* fibonacci(n) {
  let current = 0;
  let next = 1;

  for (let i = 0; i < n; i++) {
    yield current;
    [current, next] = [next, current + next];
  }
}

// Object with various properties
const config = {
  apiUrl: 'https://api.example.com',
  timeout: DEFAULT_TIMEOUT,
  retries: MAX_RETRIES,
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer token123',
  },
  // Method shorthand
  init() {
    console.log('Initializing configuration...');
  },
  // Computed property name
  [`feature_${DEBUG ? 'debug' : 'production'}`]: true,
};

// Template literals
const greet = (name, age) => {
  const message = `
    Hello, ${name}!
    You are ${age} years old.
    Welcome to the Entropy color theme.
  `;
  return message.trim();
};

// Array methods and chaining
const processData = (users) => {
  return users
    .filter(user => user.isActive)
    .map(user => ({
      ...user,
      displayName: user.name.toUpperCase(),
    }))
    .sort((a, b) => a.id - b.id)
    .slice(0, 10);
};

// Switch statement
function getStatusColor(status) {
  switch (status) {
    case 'success':
      return '#35b779';
    case 'warning':
      return '#fde724';
    case 'error':
      return '#fd971f';
    case 'info':
      return '#6ec9e0';
    default:
      return '#d4d9b8';
  }
}

// Main function
async function main() {
  console.log('=== Entropy Theme Demo ===\n');

  // Create sample users
  const users = [
    new User(1, 'Alice Johnson', 'alice@example.com'),
    new User(2, 'Bob Smith', 'bob@example.com'),
    new User(3, 'Charlie Brown', 'charlie@example.com'),
  ];

  // Validate users
  users.forEach((user, index) => {
    const isValid = user.validateEmail();
    console.log(`${index + 1}. ${user.toString()} - Valid: ${isValid}`);
  });

  // Calculate metrics
  const sampleData = [1.5, 2.3, 4.7, 3.2, 5.1, 2.8];
  const metrics = calculateMetrics(sampleData);

  console.log('\nData metrics:');
  for (const [key, value] of Object.entries(metrics)) {
    console.log(`  ${key.padEnd(8)}: ${value.toFixed(2)}`);
  }

  // Fibonacci sequence
  console.log('\nFibonacci sequence (first 10):');
  const fibs = [...fibonacci(10)];
  console.log(fibs.join(', '));

  // Greeting
  console.log('\n' + greet('Developer', 25));

  // Process active users
  const activeUsers = processData(users);
  console.log(`\nActive users: ${activeUsers.length}`);

  // Try/catch with finally
  try {
    const userData = await fetchUserData(1);
    if (userData) {
      console.log('User data fetched successfully');
    }
  } catch (err) {
    console.error('Failed to fetch user data:', err.message);
  } finally {
    console.log('\nDemo complete!');
  }
}

// Execute if running as main module
if (typeof window === 'undefined') {
  main().catch(console.error);
}

// Export for use in other modules
export { User, calculateMetrics, fetchUserData, processData };
