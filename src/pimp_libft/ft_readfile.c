/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_readfile.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/02 11:30:47 by prossi            #+#    #+#             */
/*   Updated: 2017/02/27 14:29:59 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/pimp_libft/my_libft.h"
#include <stdlib.h>

char	*ft_readfile(int fd)
{
	int		ret;
	char	*buf;

	if (!(buf = (char *)malloc(sizeof(char) * (BUF_SIZE + 1))))
		return (NULL);
	ret = read(fd, buf, BUF_SIZE);
	buf[ret] = '\0';
	if (ret == -1)
	{
		ft_putstr("Read Error");
		return (NULL);
	}
	return (buf);
}
