const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/views/**/*',
    './app/components/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  daisyui: {
    themes: [
      "lofi",
      {
        aikku: {
          "primary": "#7030a0",
          "secondary": "#46b1e1",
          "accent": "#6161b9",
          "neutral": "#3d4451",
          "base-100": "#ffffff",

          "--rounded-btn": "0rem"
        },
      },
    ],
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require("daisyui")
  ]
}
