# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ade-bast <ade-bast@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/21 13:47:51 by ade-bast          #+#    #+#              #
#    Updated: 2023/10/23 11:21:55 by ade-bast         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	#@mkdir -p /home/ade-bast/data/mysql;
	#@mkdir -p /home/ade-bast/data/html;
	docker compose -f ./srcs/docker-compose.yml up -d --build

up:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f  ./srcs/docker-compose.yml down

clean: down
	docker compose -f ./srcs/docker-compose.yml down --rmi all -v

fclean: clean
	#@sudo rm -rf /home/ade-bast/data/mysql;
	#@sudo rm -rf /home/ade-bast/data/html;

re: fclean all

.PHONY: all up down clean fclean re
