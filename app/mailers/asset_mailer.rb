class AssetMailer < ApplicationMailer
  default from:"MiningPlayers <incdecoder@gmail.com>"
  def request_asset(asset)
    @asset = asset
    mail to: "shishirthapa1@gmail.com" , subject: "Request for asset return"
  end

  def unreturn_request_asset(asset)
    @asset  = asset
    mail to: "shishirthapa1@gmail.com", subject: "Cancel Request for asset return"
  end
end
