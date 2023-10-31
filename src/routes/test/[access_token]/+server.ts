import { json } from '@sveltejs/kit';
import prisma from '$lib/prisma';
import type { Test, Result, Item } from '@prisma/client';

// Get all asnwered items
export const POST = async (event) => {
	const { access_token } = event.params;

	// get the test item
	let result = await prisma.result.findFirst({
		include: {
			answers: true
		},
		where: {
			access_token: access_token
		}
	});

	let items_id = result?.answers.map((answer) => answer.item_id);

	// return json({ result, answers: items_id });

	let test_id = result?.test_id;

	// get the test
	let items = await prisma.item.findMany({
		where: {
			id: {
				in: items_id
			}
		}
	});

	return json(items);
};

// Get the next test unaswerd item
export const GET = async (event) => {
	const { access_token } = event.params;

	// get the test item
	let result = await prisma.result.findFirst({
		include: {
			answers: true
		},
		where: {
			access_token: access_token
		}
	});

	let items_id = result?.answers.map((answer) => answer.item_id);

	// return json({ result, answers: items_id });

	let test_id = result?.test_id;

	// get the test
	let items = await prisma.item.findFirst({
		where: {
			id: {
				notIn: items_id
			}
		}
	});

	return json(items);
};
