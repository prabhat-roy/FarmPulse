// Module Federation across FarmPulse frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "farmpulse_shell",
      remotes: {
        admin: "admin@https://admin.farmpulse.internal/remoteEntry.js",
        partner: "partner@https://partner.farmpulse.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
