FROM ortussolutions/commandbox:lucee5

# Copy application files to root
COPY ./ ${APP_DIR}/