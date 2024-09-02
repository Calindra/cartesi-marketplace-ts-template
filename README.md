# TypeScript DApp Template

This is a template for TypeScript Cartesi DApps. It uses node to execute the backend application.
The application entrypoint is the `src/index.ts` file. It is bundled with [esbuild](https://esbuild.github.io), but any bundler can be used.

# Running on your machine

Use the app.sh script to run the development node (Nonodo) and start you application. It uses nodemon to start your application, so every change in your app the app is automatically reloaded

```sh
./app.sh
```