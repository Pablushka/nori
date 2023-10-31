// src/lib/prisma.ts

import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient().$extends({
	result: {
		result: {
			token_link: {
				needs: { access_token: true },
				compute(result) {
					return `${process.env.BASE_URL}/test/${result.access_token}`;
				}
			}
		}
	}
});
export default prisma;

// const prisma = new PrismaClient().$extends({
//     result: {
//       user: {
//         fullName: {
//           needs: { firstName: true, lastName: true },
//           compute(user) {
//             return `${user.firstName} ${user.lastName}`
//           },
//         },
//       },
//     },
//   })
