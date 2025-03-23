# Cucumber Integration Testing Example

This project is a simple demonstration of using the **Cucumber** framework for testing a custom Spring Boot application. It uses a multi-module Gradle setup, where the application and tests are fully separated into distinct modules.

## 🧱 Modules

- **`simple`** — contains the main Spring Boot application (`SimpleApplication`) with a sample REST controller.
- **`simple-it`** — contains integration tests using Cucumber, JUnit Platform, and RestAssured.

## ✅ Benefits of this approach

- Clear separation between production and test code
- Integration tests written in human-readable BDD syntax with Cucumber
- Supports black-box testing of the running application
- Can be easily extended for more complex systems or API integrations
- Suitable for CI/CD workflows

## 🚀 How to run

1. Start the Spring Boot application from the `simple` module:
   ```bash
   ./gradlew :simple:bootRun
   ```

2. After the app is running, execute tests from the `simple-it` module:
   ```bash
   ./gradlew :simple-it:test
   ```

## ⚙️ CI/CD Integration

To run integration tests in a CI/CD pipeline, define the following steps or jobs:

1. **Start the application** (e.g. using `gradlew :simple:bootRun` in background)
2. **Run the tests** from the `simple-it` module
3. **Stop the application** after tests complete (e.g. by killing the process or using a shutdown endpoint)

This ensures that the application is live and accessible while the tests are running, simulating real-world integration behavior.

---

Happy testing 🥒