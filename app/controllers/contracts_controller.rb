class ContractsController < ApplicationController



    def show
        @contract = Contract.find(params[:id])
    end

    def new
        @contract = Contract.new
    end

    def create
        @contract = Contract.new(contract_params(:bid_price, :job_id, :freelancer_id))
        if @contract.valid?
            @contract.save
            redirect_to freelancer_path(@contract.freelancer)
        else
            flash[:errors] = @contract.errors.full_messages
            redirect_to new_contract_path
        end
    end

    def edit
        @contract = Contract.find(params[:id])
    end

    def update

    end

    def destroy

    end

    private

    def contract_params(*args)
        params.require(:contract).permit(*args)
    end
end