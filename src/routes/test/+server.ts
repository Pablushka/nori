import { json } from '@sveltejs/kit';
import prisma from '$lib/prisma';
import type { Result } from '@prisma/client';
import crypto from 'crypto';

export const GET = async (event) => {
	// Get the first result

	let result: Result | null = null;

	try {
		result = await prisma.result.findFirst({
			where: {
				access_token: { not: null }
			}
		});
	} catch (error: any) {}

	return json(result);
};

/// Create a new test asigment
export const POST = async (event) => {
	const {
		user_id,
		test_id,
		patient_dni,
		tutor_dni,
		tutor_scolarship,
		patient_age,
		tutor_residence
	} = await event.request.json();

	// TODO: Validate the data
	let new_result: Result;

	let access_token: string = crypto.randomBytes(16).toString('hex');

	try {
		new_result = await prisma.result.create({
			data: {
				user_id,
				test_id,
				patient_dni,
				tutor_dni,
				tutor_scolarship,
				patient_age,
				tutor_residence,
				access_token
			}
		});
	} catch (error: any) {
		// TODO: investigar el tipo para error
		return json({ error: error });
	}

	return json(new_result);
};
