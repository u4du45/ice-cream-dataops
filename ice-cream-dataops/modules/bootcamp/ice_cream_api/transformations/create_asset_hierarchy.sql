select
  cast(`external_id` as STRING) as externalId,
  cast(`name` as STRING) as name,
  cast(`description` as STRING) as description,
  if(`parent_external_id`=='' OR `parent_external_id` == null, null, node_reference('icapi_dm_space', `parent_external_id`)) as parent
from
  `ice-cream-factory-db`.`assets`;