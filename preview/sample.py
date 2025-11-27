#!/usr/bin/env python3
"""
Entropy Color Theme - Syntax Preview
This file demonstrates how different syntax elements appear in the theme.
"""

import os
import sys
from typing import List, Dict, Optional
from dataclasses import dataclass


# Constants and module-level variables
MAX_RETRIES = 3
DEFAULT_TIMEOUT = 30.0
DEBUG = True


@dataclass
class User:
    """Represents a user in the system."""

    id: int
    name: str
    email: str
    is_active: bool = True

    def __str__(self) -> str:
        """Return string representation of user."""
        return f"User(id={self.id}, name='{self.name}')"

    def validate_email(self) -> bool:
        """Validate the user's email address."""
        # TODO: Implement proper email validation
        return "@" in self.email and "." in self.email


class UserManager:
    """Manages user operations and database interactions."""

    def __init__(self, db_path: str):
        self.db_path = db_path
        self.users: Dict[int, User] = {}
        self._cache = []

    def add_user(self, user: User) -> bool:
        """Add a new user to the system.

        Args:
            user: The user object to add

        Returns:
            True if user was added successfully, False otherwise
        """
        if user.id in self.users:
            print(f"Warning: User {user.id} already exists!")
            return False

        # Validate user data
        if not user.validate_email():
            raise ValueError(f"Invalid email: {user.email}")

        self.users[user.id] = user
        return True

    def get_user(self, user_id: int) -> Optional[User]:
        """Retrieve a user by ID."""
        return self.users.get(user_id)

    def list_active_users(self) -> List[User]:
        """Get all active users."""
        return [u for u in self.users.values() if u.is_active]

    @staticmethod
    def hash_password(password: str) -> str:
        """Hash a password using SHA-256."""
        import hashlib
        return hashlib.sha256(password.encode()).hexdigest()


def calculate_metrics(data: List[float]) -> Dict[str, float]:
    """Calculate statistical metrics for a dataset.

    Note: This is a simplified implementation for demonstration.
    """
    if not data:
        return {"mean": 0.0, "max": 0.0, "min": 0.0}

    mean = sum(data) / len(data)

    return {
        "mean": mean,
        "max": max(data),
        "min": min(data),
        "count": len(data),
    }


def main():
    """Main entry point of the application."""
    # Initialize user manager
    manager = UserManager("/var/db/users.db")

    # Create sample users
    users = [
        User(1, "Alice Johnson", "alice@example.com"),
        User(2, "Bob Smith", "bob@example.com", is_active=True),
        User(3, "Charlie Brown", "charlie@example.com", is_active=False),
    ]

    # Add users to manager
    for user in users:
        try:
            if manager.add_user(user):
                print(f"✓ Added user: {user}")
            else:
                print(f"✗ Failed to add user: {user}")
        except ValueError as e:
            print(f"Error: {e}")
            continue

    # Display active users
    active_users = manager.list_active_users()
    print(f"\nActive users ({len(active_users)}):")

    for idx, user in enumerate(active_users, start=1):
        print(f"  {idx}. {user.name} <{user.email}>")

    # Calculate some metrics
    sample_data = [1.5, 2.3, 4.7, 3.2, 5.1, 2.8]
    metrics = calculate_metrics(sample_data)

    print("\nData metrics:")
    for key, value in metrics.items():
        print(f"  {key:8s}: {value:6.2f}")

    # Regular expressions and escape sequences
    import re
    pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
    test_email = "user@example.com"

    if re.match(pattern, test_email):
        print(f"\n'{test_email}' is a valid email format")

    # Multiline string
    message = """
    This is a multiline string
    demonstrating how strings appear
    in the Entropy color theme.
    """

    print(message)


if __name__ == "__main__":
    # Entry point guard
    sys.exit(main())
