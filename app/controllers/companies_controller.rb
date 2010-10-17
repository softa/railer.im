class CompaniesController < InheritedResources::Base
  actions :show
  def show
    show!{@title = " · #{@company.name} · Company"}
  end
end
