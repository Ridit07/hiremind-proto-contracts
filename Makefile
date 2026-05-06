PROTO_DIR=proto
GEN_DIR=generated

PROTO_FILES=$(shell find $(PROTO_DIR) -name "*.proto")

.PHONY: proto clean

proto:
	mkdir -p $(GEN_DIR)

	protoc \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(GEN_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_FILES)

clean:
	rm -rf $(GEN_DIR)