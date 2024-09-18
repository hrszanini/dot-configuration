return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local configuration_path = '~/.config/nvim/'

    local theme = require 'alpha.themes.dashboard'
    theme.section.header.val = {
      [[          ▀████▀▄▄              ▄█   ▞▀▖     ▌   ▐         ]],
      [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█   ▌  ▞▀▖▞▀▌▞▀▖▜▀ ▞▀▖▙▀  ]],
      [[    ▄        █          ▀▀▀▀▄  ▄▀    ▌ ▖▌ ▌▌ ▌▛▀ ▐ ▖▌ ▌▌   ]],
      [[   ▄▀ ▀▄      ▀▄              ▀▄▀    ▝▀ ▝▀ ▝▀▘▝▀▘ ▀ ▝▀ ▘   ]],
      [[  ▄▀    █     █▀   ▄█▀▄      ▄█                            ]],
      [[  ▀▄     ▀▄  █     ▀██▀     ██▄█       ▛▀▘      ▗          ]],
      [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █      ▙▄ ▛▀▖▞▀▌▄ ▛▀▖▞▀▖   ]],
      [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀      ▌  ▌ ▌▚▄▌▐ ▌ ▌▛▀    ]],
      [[   █   █  █      ▄▄           ▄▀       ▀▀▘▘ ▘▗▄▘▀▘▘ ▘▝▀▘   ]],
    }

    theme.section.buttons.val = {
      theme.button('f', '  Find file', ':Telescope find_files <CR>'),
      theme.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      theme.button('t', '  New template', ':Telescope find_template <CR>'),
      theme.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
      theme.button('g', '  Find text', ':Telescope live_grep <CR>'),
      theme.button('c', '  Configuration', ':cd ' .. configuration_path .. '<CR>:e init.lua <CR>'),
      theme.button('q', '  Quit Neovim', ':qa<CR>'),
    }

    local function footer()
      local developerSentences = {
        {
          'Fala pro cliente que ',
          'Com este commit, ',
          'Nesse pull request, ',
          'Dado o fluxo de dados atual, ',
          'Explica pro Product Onwer que ',
          'Desde ontem a noite ',
          'A equipe de suporte precisa saber que ',
        },
        {
          'a normalização da data ',
          'um erro não identificado ',
          'o gerenciador de dependências do frontend ',
          'o módulo de recursão paralela ',
          'a otimização de performance da renderização do DOM ',
          'a disposição dos elementos HTML ',
          'a compilação final do programa ',
          'o deploy automatizado no Heroku ',
          'o último pull request desse SCRUM ',
        },
        {
          'deletou todas as entradas ',
          'otimizou a renderização ',
          'causou o bug ',
          'corrigiu o bug ',
          'superou o desempenho ',
          'complexificou o merge ',
          'facilitou a resolução de conflito ',
          'causou a race condition ',
        },
        {
          'do nosso servidor de DNS.',
          'do polimorfismo aplicado nas classes.',
          'do fluxo de dados de forma retroativa no server.',
          'de estados estáticos nos componentes da UI.',
          'do JSON compilado a partir de proto-buffers.',
          'de uma compilação com tempo acima da media.',
          'de uma configuração Webpack eficiente nos builds.',
          'da execução parelela de funções em multi-threads.',
          'de compilação multi-plataforma de forma asincrona.',
          'da execução de requisições effcientes na API.',
          'na estabilidade do protocolo de transferência de dados.',
          'do carregamento de JSON delimitado por linhas.',
          'na interpolação dinâmica de strings.',
          'no parse retroativo do DOM.',
          'no fechamento automático das tags.',
          'na compilação de templates literais.',
          'na definição de variaveis com tipos estáticos.',
          'da renderização de floats parciais.',
          'na organização alfanumérico dos arrays multidimensionais',
          'dos parametros passados em funções privadas.',
          'dos argumentos que definem um schema dinâmico.',
          'na criação de novos polyfills para suportar os processos.',
        },
      }

      math.randomseed(os.time())
      local sentence = ''
      for key, value in pairs(developerSentences) do
        local randomIndex = math.random(1, #value)
        sentence = sentence .. value[randomIndex]
      end
      return sentence
    end

    theme.section.footer.val = footer()

    theme.section.footer.opts.hl = 'Type'
    theme.section.header.opts.hl = 'Include'
    theme.section.buttons.opts.hl = 'Keyword'

    theme.opts.opts.noautocmd = true
    alpha.setup(theme.opts)
  end,
}
