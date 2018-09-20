/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sh_setenv.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mnaidoo <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/31 11:40:03 by mnaidoo           #+#    #+#             */
/*   Updated: 2017/09/09 01:56:02 by mnaidoo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/minishell.h"

int	sh_setenv(char *arg, t_data *p)
{
	if (arg == NULL)
		ft_putstr("setenv: not enough arguments.\n");
	else
		sh_increase_array(arg, p);
	return (1);
}
