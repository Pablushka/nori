import { json } from '@sveltejs/kit';
import prisma from '$lib/prisma';
import type { User } from '@prisma/client';
import { isValidEmail } from '$lib/models_validations.js';

/// Get a user by id
export const GET = async (event) => {
	const { id } = event.params;
	let user = await prisma.user.findUnique({
		where: {
			id: Number(id)
		}
	});

	return json(user ?? { error: 'User not found' });
};

/// Update user by id
export const PUT = async (event) => {
	const { id } = event.params;
	const { username, email } = await event.request.json();

	if (!isValidEmail(email)) {
		return json({ error: 'Invalid email' });
	}

	let updated_user: User = await prisma.user.update({
		where: {
			id: Number(id)
		},
		data: {
			username,
			email
		}
	});

	return json(updated_user);
};

/// Delete user by id
export const DELETE = async (event) => {
	return json({ error: 'Not enabled yet' });

	const { id } = event.params;
	let deleted_user: User = await prisma.user.delete({
		where: {
			id: Number(id)
		}
	});

	return json(deleted_user);
};
