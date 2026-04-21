/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_all.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgrosse <lgrosse@learner.42.tech>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/04/21 17:08:15 by lgrosse           #+#    #+#             */
/*   Updated: 2026/04/21 17:58:44 by lgrosse          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#if defined HEADERS
#include <string.h>
#elif defined TESTS

TEST("Test strlen")
{
	ASSERT(strlen("") == 0);
	ASSERT(strlen("Hello") == 5);
	ASSERT(strlen("\0") == 0);
}
#endif
