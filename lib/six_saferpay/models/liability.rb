module SixSaferpay
  class Liability

    attr_accessor(:liability_shift,
                  :liable_entity,
                  :three_ds,
                  :fraud_free,
                  :dcc
                 )

    def initialize(liability_shift:,
                   liable_entity:,
                   three_ds: nil,
                   fraud_free: nil,
                   dcc: nil
                  )
      @liability_shift = liability_shift
      @liable_entity = liable_entity
      @three_ds = three_ds
      @fraud_free = fraud_free
      @dcc = dcc
    end

    def to_hash
      body = Hash.new
      body.merge!(liability_shift: @liability_shift)
      body.merge!(liable_entity: @liable_entity)
      body.merge!(three_ds: @three_ds) if @three_ds
      body.merge!(fraud_free: @fraud_free) if @fraud_free
      body.merge!(dcc: @dcc) if @dcc
      body
    end
    alias_method :to_h, :to_hash

  end
end
