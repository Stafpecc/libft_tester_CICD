DOCKER_IMAGE = libft-image
LIBFT_DIR = ../libft
LIBFT_A = $(LIBFT_DIR)/libft.a

all: docker-build docker-run

docker-build:
	docker build -t $(DOCKER_IMAGE) .

docker-run:
	docker run --rm -v $(PWD):/Rank_0 $(DOCKER_IMAGE) make -C $(LIBFT_DIR)

clean:
	docker run --rm -v $(PWD):/Rank_0 $(DOCKER_IMAGE) make clean -C $(LIBFT_DIR)

fclean:
	docker run --rm -v $(PWD):/Rank_0 $(DOCKER_IMAGE) make fclean -C $(LIBFT_DIR)

re: fclean all

.PHONY: all docker-build docker-run clean fclean re
