local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath 'data' .. '/site/java/workspace-root/' .. project_name
os.execute('mkdir -p ' .. workspace_dir)

local mason_registry = require 'mason-registry'
local install_path = mason_registry.get_package('jdtls'):get_install_path()
--local java_test_install_path = mason_registry.get_package('java-test'):get_install_path()

local status, jdtls = pcall(require, 'jdtls')
if not status then
  return
end

local extendedClientCapabilities = jdtls.extendedClientCapabilities

local os
if vim.fn.has 'mac' == 1 then
  os = 'mac'
elseif vim.fn.has 'unix' == 1 then
  os = 'linux'
elseif vim.fn.has 'win32' == 1 then
  os = 'win'
end

local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',
    '-javaagent:' .. install_path .. '/lombok.jar',
    '-jar',
    vim.fn.glob(install_path .. '/plugins/org.eclipse.equinox.launcher_*.jar'),
    '-configuration',
    install_path .. '/config_' .. os,
    '-data',
    workspace_dir,
  },

  root_dir = require('jdtls.setup').find_root { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' },

  settings = {
    java = {
      signatureHelp = { enabled = true },
      extendedClientCapabilities = extendedClientCapabilities,
      maven = {
        downloadSources = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = 'all', -- literals, all, none
        },
      },
      format = {
        enabled = false,
      },
    },
  },

  init_options = {
    bundles = {},
  },
}

require('jdtls').start_or_attach(config)
