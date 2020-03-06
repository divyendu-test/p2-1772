const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
  const data = await prisma.ahoy_events.create({
    data: {
      created_at: '2024-06-26T14:40:10.450Z',
      //   id: 'ba000471-eabd-55d2-8b42-8ac91ec57e13', // ConnectorError(ConnectorError { user_facing_error: None, kind: QueryError(Server(ServerError { code: 1406, message: "Data too long for column \'id\' at row 1", state: "22001" })) })
      id: 'ba000471',
      name: 'sab',
      properties: 'ziwiwwuh',
      time: '2077-02-06T12:02:57.325Z',
      type: 'zeenejom',
      updated_at: '2034-04-09T19:09:04.015Z',
      user_id: 2091163462,
      visit_id: 'mahbu',
    },
  })
  console.log({ data })
}

main().finally(() => {
  prisma.disconnect()
})
