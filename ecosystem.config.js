module.exports = {
    apps: [
      {
        name: "todo_app",
        script: "bin/rails",
        args: "server -b 0.0.0.0 -p 3000",
        interpreter: "ruby",         // Specify Ruby as the interpreter
        env: {
          RAILS_ENV: "production",
          SECRET_KEY_BASE: "1d71ef77354818b28e6eb14211c671c4d3792686e82b94dc12ab7a6f0155052ea6d53f7f06af5e0038f10af5a0f5e9f80e223ea7eaf649495dccfc2ef7f9c0f7" // Set other env vars here
        }
      }
    ]
  };
  