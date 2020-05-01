class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.integer :finicityId
      t.string :name
      t.string :accountTypeDescription
      t.string :phone
      t.string :urlHomeApp
      t.string :urlLogonApp
      t.boolean :oauthEnabled
      t.string :urlForgotPassword
      t.string :urlOnlineRegistration
      t.string :klass
      t.string :specialText
      t.string :specialInstructions
      t.jsonb :address
      t.string :currency
      t.string :email
      t.string :status
      t.string :oauthInstitutionId
      t.string :branding

      t.timestamps
    end
  end
end
