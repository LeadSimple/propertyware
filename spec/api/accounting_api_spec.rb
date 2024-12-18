=begin
#Open API, powered by Propertyware


The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Propertyware::AccountingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountingApi' do
  before do
    # run before each test
    @api_instance = Propertyware::AccountingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountingApi' do
    it 'should create an instance of AccountingApi' do
      expect(@api_instance).to be_instance_of(Propertyware::AccountingApi)
    end
  end

  # unit tests for create_bank_deposit
  # Create a bank deposit
  # Creates a bank deposit.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GENERAL LEDGER&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param save_bank_deposit saveBankDeposit
  # @param [Hash] opts the optional parameters
  # @return [BankDeposit]
  describe 'create_bank_deposit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_bill_payments
  # Create general ledger accounts in bulk (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates general ledger accounts in bulk.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param save_account saveAccount
  # @param [Hash] opts the optional parameters
  # @return [Array<RESTAPIBulkSuccessResponse>]
  describe 'create_bill_payments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_gl_account
  # Create a general ledger account (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Create a general ledger account.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param save_account saveAccount
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'create_gl_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_owner_contribution
  # Create an owner contribution
  # Creates an owner contribution for a specified owner contact.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param save_owner_contribution saveOwnerContribution
  # @param [Hash] opts the optional parameters
  # @return [OwnerContribution]
  describe 'create_owner_contribution test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_owner_draw
  # Create an owner draw
  # Creates an owner draw for a specified owner contact.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param save_owner_draw saveOwnerDraw
  # @param [Hash] opts the optional parameters
  # @return [OwnerDraw]
  describe 'create_owner_draw test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_bank_deposit
  # Delete a Bank Deposit (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Delete a Bank Deposit.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GENERAL LEDGER&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
  # @param bank_deposit_id Bank Deposit ID
  # @param [Hash] opts the optional parameters
  # @return [ResponseEntity]
  describe 'delete_bank_deposit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_gl_account
  # Delete a general ledger account (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Delete a general ledger account.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
  # @param gl_account GL Account ID
  # @param [Hash] opts the optional parameters
  # @return [ResponseEntity]
  describe 'delete_gl_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_owner_contribution
  # Delete Owner Contribution (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Delete Owner Contribution.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
  # @param owner_contribution_id Owner Contribution ID
  # @param [Hash] opts the optional parameters
  # @return [ResponseEntity]
  describe 'delete_owner_contribution test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account
  # Retrieve a general ledger account
  # Retrieves a general ledger account.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
  # @param gl_account_id GL Account ID
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'get_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_accounts
  # Retrieve all the general ledger accounts
  # Retrieves a list of general ledger accounts.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;accountcode&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;, &lt;code&gt;accountnumber&lt;/code&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100.
  # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
  # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
  # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
  # @option opts [String] :account_number Filters results to accounts with a specific number.
  # @option opts [Boolean] :include_deactivated Include deactivated results if a &#x60;true&#x60; value is passed. If no value is specified, only active accounts will be returned.
  # @option opts [String] :account_code Filters results to accounts with a specific code.
  # @option opts [Integer] :parent_gl_account_id Filters results to accounts that are a children of a specific parent account.
  # @return [Array<Account>]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_general_ledger_transactions
  # Retrieve all general ledger transactions (BETA)
  # &lt;p class&#x3D;\&quot;betaWarning\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.&lt;/p&gt; Retrieves a list of general ledger transactions.&lt;br /&gt;&lt;br /&gt;At least of the following date ranges must be passed as a filter:   * &#x60;lastModifiedDateStart&#x60;-&#x60;lastModifiedDateEnd&#x60;   * &#x60;createdDateStart&#x60;-&#x60;createdDateEnd&#x60;&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GENERAL LEDGER&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100.
  # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
  # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
  # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
  # @option opts [Integer] :lease_id Filters results to transactions associated with a specific lease.
  # @option opts [Integer] :owner_id Filters results to transactions associated with a specific owner.
  # @option opts [Integer] :vendor_id Filters results to transactions associated with a specific vendor.
  # @option opts [Integer] :portfolio_id Filters results to transactions associated with a specific Portfolio.
  # @option opts [Date] :post_date_start Filters results to any transaction with post date on or after to the date specified.
  # @option opts [Date] :post_date_end Filters results to any transaction with post date on or prior to the date specified.
  # @return [Array<GLItem>]
  describe 'get_general_ledger_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_owner_contributions
  # Retrieve all the owner contributions
  # Retrieves a list of owner contributions.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100.
  # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
  # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
  # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
  # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
  # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
  # @option opts [Integer] :portfolio_id Filters results to with portfolioID.
  # @return [Array<OwnerContribution>]
  describe 'get_owner_contributions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_owner_draws
  # Retrieve all the owner draws
  # Retrieves a list of owner draws.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;portfolioid&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100.
  # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
  # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
  # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
  # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
  # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
  # @option opts [Integer] :portfolio_id Filters results to with portfolioID.
  # @return [Array<OwnerDraw>]
  describe 'get_owner_draws test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_gl_account
  # Update a general ledger account (BETA)
  # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates a general ledger account.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param gl_account_id GL Account ID
  # @param save_account saveAccount
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'update_gl_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_owner_draw
  # Update an owner draw
  # Updates an owner draw for a specified owner contact.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
  # @param draw_id Owner Draw ID
  # @param save_owner_draw saveOwnerDraw
  # @param [Hash] opts the optional parameters
  # @return [OwnerDraw]
  describe 'update_owner_draw test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
