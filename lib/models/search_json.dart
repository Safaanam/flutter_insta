List searchCategories = [
  "Shop",
  "Decor",
  "Travel",
  "Architecture",
  "Food",
  "Art",
  "Style",
  "TV & Movies",
  "Music",
  "DIY",
  "Comics"
];

List searchImages = [
  "https://images.unsplash.com/photo-1613616674517-944a252bded3?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613572596121-be77393319e9?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613580441672-05f1cc1b0435?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0M3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613569188142-5ce49668fed7?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613574714687-c33b9e90200d?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613573221434-8434440c46cc?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1516822290226-f5634e1eec35?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612875775405-a9eb2029a2e4?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613300757312-0ed07b0731a0?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ0fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1611162600500-2822bd954d91?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8UzRNS0xBc0JCNzR8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612993744860-28255c1aee0c?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE3fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612812709762-ee4b81860f80?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfHFQWXNEenZKT1ljfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612438123587-ebfdc6b9f687?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1600275669439-14e40452d20b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fGFldTZyTC1qNmV3fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612599736674-b66d14f786a2?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fHFQWXNEenZKT1ljfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1468127225977-85bc4aa3fe0f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDc0fHJuU0tESHd3WVVrfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1524666643752-b381eb00effb?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE4fGFldTZyTC1qNmV3fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1504933350103-e840ede978d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1613330418354-0af9539535d7?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDExfGhtZW52UWhVbXhNfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613066171156-536b7bbc1ce4?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfFM0TUtMQXNCQjc0fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612989616151-5350f208ed7c?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fGhtZW52UWhVbXhNfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613521140785-e85e427f8002?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8UzRNS0xBc0JCNzR8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1612707823002-450121a21cb3?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8aG1lbnZRaFVteE18fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1609175086681-28a822dfd86b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ5fFM0TUtMQXNCQjc0fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1581333100576-b73befd79a9b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMzfF9oYi1kbDRRLTRVfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1568304056730-b3f200eb4e46?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8X2hiLWRsNFEtNFV8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1613055531761-0040c422729c?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyfGhtZW52UWhVbXhNfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1608063998093-fa2c7adeca83?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8Ul9GeW4tR3d0bHd8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1578157300519-5b1ca459b218?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfEo5eXJQYUhYUlFZfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1592893658769-5da16cb93236?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMzfEpwZzZLaWRsLUhrfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",

];