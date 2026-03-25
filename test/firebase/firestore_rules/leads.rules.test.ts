import {
  assertFails,
  assertSucceeds,
  initializeTestEnvironment,
  RulesTestEnvironment,
} from '@firebase/rules-unit-testing';
import { readFileSync } from 'fs';

describe('leads.rules', () => {
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
      await db.doc('leads/lead_a').set({
        companyId: 'company_a',
        name: 'Lead A',
        stage: 'new',
      });
      await db.doc('leads/lead_b').set({
        companyId: 'company_b',
        name: 'Lead B',
        stage: 'new',
      });
    });
  });

  it('permite leitura de lead do próprio tenant', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertSucceeds(ctx.firestore().doc('leads/lead_a').get());
  });

  it('bloqueia leitura cross-tenant', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertFails(ctx.firestore().doc('leads/lead_b').get());
  });

  it('bloqueia criação sem companyId compatível', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertFails(
      ctx.firestore().doc('leads/lead_invalid').set({
        companyId: 'company_b',
        name: 'Lead inválido',
        stage: 'new',
      }),
    );
  });
});
