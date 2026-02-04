-- Add pinned column to conversations for pinning feature
ALTER TABLE conversations ADD COLUMN pinned BOOLEAN NOT NULL DEFAULT FALSE;

-- Index for efficient sorting by pinned status
CREATE INDEX idx_conversations_pinned ON conversations(pinned);
