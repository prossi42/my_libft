/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_openfile.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/27 11:23:17 by prossi            #+#    #+#             */
/*   Updated: 2017/02/27 11:24:27 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/pimp_libft/my_libft.h"

int		ft_openfile(char *file)
{
	int		fd;

	fd = open(file, O_RDONLY);
	if (fd == -1)
		ft_putstr("error\n");
	return (fd);
}
