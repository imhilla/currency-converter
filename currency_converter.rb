#¥
#£
#$
#ksh

def currency_converter amount, location
    case location
    when 'US' then "$%.2f" % amount #2 means two decimal places
    when 'Kenya' then "ksh%.0f" % amount #0 means no decimal place
    when 'China' then "¥%.2f" % amount #2 also means two decimal places
    when 'UK' then ("£%.2f" % amount).gsub('.',',')#we are substituting the . with , since in uk , is used.
    end
end

currency_converter 400, 'Kenya'