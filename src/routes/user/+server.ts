import {json} from '@sveltejs/kit'
import prisma from '$lib/prisma'
import type { User } from '@prisma/client'
import { isValidEmail} from  '$lib/models_validations.js'

export const GET = async (event) =>{
  return new Response('Hello')
}

/// Create a new user
export const POST = async (event) => {

  const {username, email} = await event.request.json()

  if (!isValidEmail(email)) {
    return json({error: 'Invalid email'})
  }

  let new_user: User = await prisma.user.create({
    data: {
      username,
      email,
    },
  })

  return json(new_user)
}

