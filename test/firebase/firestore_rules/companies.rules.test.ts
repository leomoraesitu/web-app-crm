import {
  assertFails,
  assertSucceeds,
  initializeTestEnvironment,
  RulesTestEnvironment,
} from '@firebase/rules-unit-testing';
import { readFileSync } from 'fs';

/// Ajuste o caminho do firestore.rules conforme o seu projeto.
/// Exemplo comum: ../../firebase/firestore.rules

describe('companies.rules', () => {
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
      await db.doc('companies/company_a').set({ name: 'Empresa A' });
      await db.doc('companies/company_b').set({ name: 'Empresa B' });
      await db.doc('users/admin_a').set({ companyId: 'company_a', role: 'admin' });
      await db.doc('users/collab_a').set({ companyId: 'company_a', role: 'collaborator' });
    });
  });

  it('permite admin ler a própria empresa', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertSucceeds(ctx.firestore().doc('companies/company_a').get());
  });

  it('bloqueia leitura de outra empresa', async () => {
    const ctx = testEnv.authenticatedContext('admin_a', {
      companyId: 'company_a',
      role: 'admin',
    });

    await assertFails(ctx.firestore().doc('companies/company_b').get());
  });
});
