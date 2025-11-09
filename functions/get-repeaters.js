export async function onRequest(context) {
  const repeaterStore = context.env.REPEATERS;
  const repeaters = await repeaterStore.list();

  return new Response(JSON.stringify(repeaters));
}
