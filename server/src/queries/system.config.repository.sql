-- NOTE: This file is auto generated by ./sql-generator

-- SystemConfigRepository.load
SELECT
  "SystemConfigEntity"."key" AS "SystemConfigEntity_key",
  "SystemConfigEntity"."value" AS "SystemConfigEntity_value"
FROM
  "system_config" "SystemConfigEntity"

-- SystemConfigRepository.deleteKeys
DELETE FROM "system_config"
WHERE
  "key" IN ($1, $2, $3, $4, $5, $6, $7, $8, $9)