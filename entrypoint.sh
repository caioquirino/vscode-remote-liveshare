#!/bin/bash

(sleep 3 && cat ~/.config/code-server/config.yaml) & code-server --verbose --link