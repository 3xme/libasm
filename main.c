/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abiari <abiari@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/17 13:49:35 by abiari            #+#    #+#             */
/*   Updated: 2020/02/21 17:02:28 by abiari           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libasm.h"
void	ft_strcmp_test(void);
void	ft_strcpy_test(void);
void	ft_write_test(void);
void	ft_strlen_test(void);
void	ft_read_test(void);
void	ft_strdup_test(void);

int		main(void)
{
	int		len;
	int		ret;
	char	*str;
	// char	*ret;

	// len = ft_strlen("cwecewcwe");
	// printf("len = %d", len);
	// len = ft_write(1, &c, 1);
	// printf("\nlen = %d", len);
	// len = ft_read(0, str, 4);
	// printf("|%d: %s|\n", len, str);
	// ret = ft_strcmp("abc ", "abcc");
	// printf("ret = |%d|", ret);
	// ret = strcmp("abc ", "abcc");
	// printf("\nret = |%d|", ret);
	// ret = strcpy(str, "abcdefeg");
	// len = strlen(ret);
	// printf("|%d :%s|\n", len, ret);
	// ret = ft_strcpy(str, "abcdefeg");
	// len = ft_strlen(ret);
	// printf("|%d :%s|\n", len, ret);
	// ft_strlen_test();
	// ft_read_test();
	// ft_strcmp_test();
	ft_strdup_test();
	ft_strcmp_test();
	ft_strcpy_test();
	ft_write_test();
	ft_strlen_test();
	ft_read_test();
	return (0);
}