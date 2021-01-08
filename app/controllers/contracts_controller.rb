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
        @contract = Contract.find_by(id: params[:id])
        @contract.update(contract_params(:bid_price))
        if @contract.valid?
            @contract.save
            redirect_to freelancer_path(@contract.freelancer)
        else
            flash[:errors] = @contract.errors.full_messages
            redirect_to contract_path(@contract)
        end
    end

    def destroy
        @contract = Contract.find_by(id: params[:id])
        free = @contract.freelancer
        @contract.destroy
        redirect_to freelancer_path(free)
    end

    private

    def contract_params(*args)
        params.require(:contract).permit(*args)
    end
end