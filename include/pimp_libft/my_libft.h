/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   my_libft.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/27 11:14:38 by prossi            #+#    #+#             */
/*   Updated: 2017/02/27 14:22:17 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MY_LIBFT_H
# define MY_LIBFT_H

# include <fcntl.h>
# include <sys/types.h>
# include <sys/uio.h>
# include <unistd.h>
# include "../off_libft/libft.h"

# define BUF_SIZE 4096

int			ft_openfile(char *file);
char		*ft_readfile(int fd);
int			ft_closefile(int fd);

#endif
