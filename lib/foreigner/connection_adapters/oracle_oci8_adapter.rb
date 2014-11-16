module Foreigner
   module ConnectionAdapters
      module OracleEnhancedAdapter
      require 'active_record/connection_adapters/oracle_enhanced_adapter'
      require 'active_record/connection_adapters/oracle_enhanced_schema_statements_ext'
      include ActiveRecord::ConnectionAdapters::OracleEnhancedSchemaStatementsExt

        def foreign_key_exists?(table_name, options)
            #puts foreign_keys(table_name)
            return true unless ( foreign_keys(table_name).nil? || foreign_keys(table_name).empty? )
            return false
         end
      end
   end
end

Foreigner::Adapter.safe_include :OracleEnhancedAdapter, Foreigner::ConnectionAdapters::OracleEnhancedAdapter
