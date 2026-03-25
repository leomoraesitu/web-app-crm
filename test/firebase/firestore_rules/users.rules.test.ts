import {
  assertFails,
  assertSucceeds,
  initializeTestEnvironment,
  RulesTestEnvironment,
} from '@firebase/rules-unit-testing';
import { readFileSync } from 'fs';

describe('users.rules', () => {
  let testEnv: RulesTestEnvironment;

  beforeAll(async () => {
    testEnv = await initializeTestEnvironment({
      projectId: 'web-app-crm-test',
      firestore: {
        rules: readFileSync('firestore.rules', 'utf8'),
      },
    });
  });

  afterAll(async () => {
    await testEnv.cleanup();
  });

  beforeEach(async () => {
    await testEnv.clearFirestore();

    await testEnv.withSecurityRulesDisabled(async (context) => {
      const db = context.firestore();
      await db.doc('users/admin_a').set({ companyId: 'company_a', role: 'admin' });
      await db.doc('users/collab_a').set({ companyId: 'company_a', role: 'collaborator' });
      await db.doc('users/admin_b').set({ companyId: 'company_b', role: 'admin' });
    });
  });

  it('permite admin ler usuário do próprio tenant', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertSucceeds(ctx.firestore().doc('users/collab_a').get());
  });

  it('bloqueia usuário de outro tenant', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertFails(ctx.firestore().doc('users/admin_b').get());
  });
});
