class Transaction
  attr_accessor :amount, :message
  def initialize(amount,message)
    # Initialize amount and date of transaction
    @time = Time.new
    @amount = amount
    @message = message
  end
  
  def to_s
    # Nicely print transaction infos using Time#strftime.
     @time.strftime("#{@amount} on %d/%m/%Y at %I:%M%p for this reason:#{@message}")
  end
end

new_transaction = Transaction.new(-500, "car rent")
puts new_transaction