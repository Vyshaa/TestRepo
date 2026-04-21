/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgrosse <lgrosse@learner.42.tech>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/04/21 17:07:56 by lgrosse           #+#    #+#             */
/*   Updated: 2026/04/21 17:40:31 by lgrosse          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#define HEADERS
#include "test_all.c"
#undef HEADERS

#define TEST(name) putchar('\n'); test = name; printf("%s", name);
#define ASSERT(ast)\
  do {\
    assertion = #ast;\
    file = __FILE__;\
    line = __LINE__;\
    if(ast) putchar('.'); else goto fail;\
  } while(0)

int main() {
  const char *test = "";
  const char *assertion = "";
  const char *file = "";
  int line = 0;

  printf("Running tests...");
# define TESTS
# include "test_all.c"
# undef TESTS

  putchar('\n');
  return 0;

fail:
  printf("KO!\nTest failed at %s:%d\n    %s: %s\n",
      file, line,
      test, assertion);
  return -1;
}
