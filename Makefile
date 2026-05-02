PROTO_DIR=proto
GEN_DIR=generated

proto:
	mkdir -p $(GEN_DIR)

	protoc \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(GEN_DIR) \
		--go-grpc_out=$(GEN_DIR) \
		$(PROTO_DIR)/*.proto

clean:
	rm -rf $(GEN_DIR)