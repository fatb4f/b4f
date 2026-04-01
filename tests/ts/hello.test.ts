import { expect, test } from 'vitest';

import { hello } from '../../src/ts/hello';

test('hello greets by name', () => {
  expect(hello('b4f')).toBe('Hello, b4f!');
});
