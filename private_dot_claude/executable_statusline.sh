#!/bin/bash
input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name // "Claude"')
input_tokens=$(echo "$input" | jq -r '.context_window.total_input_tokens // 0')
output_tokens=$(echo "$input" | jq -r '.context_window.total_output_tokens // 0')
context_size=$(echo "$input" | jq -r '.context_window.context_window_size // 200000')

total=$((input_tokens + output_tokens))

# format as e.g. 45.2k
fmt() {
  awk -v n="$1" 'BEGIN{printf "%.1fk", n/1000}'
}

echo "[$model] $(fmt $total)/$(fmt $context_size) tokens"