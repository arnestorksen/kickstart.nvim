return {
  --Uses https://www.npmjs.com/package/yaml-language-server
  require('lspconfig').yamlls.setup {
    settings = {
      yaml = {
        schemaStore = {
          enable = false,
          url = '',
        },
        schemas = require('schemastore').yaml.schemas {
          select = {
            'kustomization.yaml',
          },
          extra = {
            {
              name = 'dokkenizer manifest',
              description = 'dokkenizer schema',
              fileMatch = 'application.yaml',
              url = 'file:///Users/ars/code/dokken/dokkenizer/schema.json',
            },
          },
        },
      },
    },
  },
}
