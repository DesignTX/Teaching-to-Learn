# frozen_string_literal: true

class TransactionsController < ApplicationController
  def new; end

  # we got this code from the stripe documentation, little changes were required, just USD to aud
  def create
    @amount = params[:amount]

    @amount = @amount.delete('$').delete(',')

    begin
      @amount = Float(@amount).round(2)
    rescue StandardError
      flash[:error] = 'Charge not completed. Please enter a valid amount in AUD ($).'
      redirect_to new_charge_path
      return
    end

    @amount = (@amount * 100).to_i # Must be an integer!

    if @amount < 500
      flash[:error] = 'Charge not completed. Donation amount must be at least $5.'
      redirect_to new_charge_path
      return
    end

    Stripe::Charge.create(
      amount: @amount,
      currency: 'aud',
      source: params[:stripeToken],
      description: 'Custom donation'
    )
  end
end
