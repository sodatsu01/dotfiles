// TODO MacとWindowsで設定が変わる部分をきれいにする

module.exports = {
  config: {
    updateChannel: 'stable',

    fontSize: 18,
    fontFamily: 'Yutapon coding Bold',
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    cursorColor: 'rgba(248,28,229,0.8)',
    cursorAccentColor: '#000',
    cursorShape: 'BLOCK',
    cursorBlink: false,

    padding: '6px 12px',
    lineHeight: 1.1,

    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },
    env: {},

    bell: false,

    copyOnSelect: false,

    defaultSSHApp: true,

    overlay: {
      alwaysOnTop: true,
      animate: false,
      hasShadow: false,
      hideDock: true,
      hideOnBlur: false,
      hotkeys: ['alt+space', 'HOME'],
      position: 'right',
      primaryDisplay: false,
      resizable: true,
      startAlone: true,
      startup: true,
      size: 1,
      tray: true,
      unique: false,
    },

    opacity: {
      focus: 0.85,
      blur: 0.65,
    }
  },

  plugins: [
    'hyper-iceberg',
    'hyperterm-overlay',
    'hyper-opacity',
  ],
  localPlugins: [],

};
