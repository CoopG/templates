print_p_value <- function(p_value, location) {
  if (location == "text" & p_value < 0.001) { 
    return("< .001") 
  } else if (location == "text") { 
    return(paste0("= ", p_value)) 
  }
  if (location == "table" & p_value < 0.001){ 
    return("< .001") 
  } else if (location == "table") { 
    return(p_value) 
  }
  if (location == "figure" & p_value < 0.001) {
    return(paste0("p < ", sprintf("%.3f", p_value)))
  } else if (location == "figure") { 
    return(paste0("p = ", sprintf("%.3f", p_value))) 
  }
}