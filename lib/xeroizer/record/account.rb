module Xeroizer
  module Record
    
    class AccountClass < BaseClass
        
        set_permissions :read
        
    end
    
    class Account < Base
    
      TYPE = {
        'CURRENT' =>        '',
        'FIXED' =>          '',
        'PREPAYMENT' =>     '',
        'EQUITY' =>         '',
        'DEPRECIATN' =>     '',
        'DIRECTCOSTS' =>    '',
        'EXPENSE' =>        '',
        'OVERHEADS' =>      '',
        'CURRLIAB' =>       '',
        'LIABILITY' =>      '',
        'TERMLIAB' =>       '',
        'OTHERINCOME' =>    '',
        'REVENUE' =>        '',
        'SALES' =>          ''
      } unless defined?(TYPE)

      TAX_TYPE = {
        'NONE' =>             'No GST',
        'EXEMPTINPUT' =>      'VAT on expenses exempt from VAT (UK only)',
        'INPUT' =>            'GST on expenses',
        'SRINPUT' =>          'VAT on expenses',
        'ZERORATEDINPUT' =>   'Expense purchased from overseas (UK only)',
        'RRINPUT' =>          'Reduced rate VAT on expenses (UK Only)', 
        'EXEMPTOUTPUT' =>     'VAT on sales exempt from VAT (UK only)',
        'OUTPUT' =>           'OUTPUT',
        'SROUTPUT' =>         'SROUTPUT',
        'ZERORATEDOUTPUT' =>  'Sales made from overseas (UK only)',
        'RROUTPUT' =>         'Reduced rate VAT on sales (UK Only)',
        'ZERORATED' =>        'Zero-rated supplies/sales from overseas (NZ Only)'
      } unless defined?(TAX_TYPE)
            
      string  :account_id
      string  :code
      string  :name
      string  :type
      string  :tax_type
      string  :description
      string  :system_account
      boolean :enable_payments_to_account
      
    end
    
  end
end