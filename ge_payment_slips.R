# Set seed for reproducibility
set.seed(123)

# Generate a list of 400 workers randomly
workers <- list()
genders <- c('Male', 'Female')

# Generate 400 workers with random details
for (i in 1:400) {
  worker <- list(
    id = i,
    name = paste("Worker", i, sep = "_"),
    gender = sample(genders, 1),
    salary = round(runif(1, 5000, 30000), 2)
  )
  workers[[i]] <- worker
}

# Generate payment slips
for (worker in workers) {
  tryCatch({
    unknown_level <- "No level assigned"  # Default value
    
    salary <- worker$salary
    gender <- worker$gender
    
    if (salary > 10000 && salary < 20000) {
      unknown_level <- "A1"
    }
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      unknown_level <- "A5-F"
    }
    
    cat(paste("Payment Slip for", worker$name, "\n"))
    cat(paste("ID:", worker$id, "\nEmployee Level:", unknown_level, "\nGender:", gender, "\nSalary: $", salary, "\n", sep = " "))
    cat(rep("-", 25), "\n")
    
  }, error = function(e) {
    cat(paste("Error for worker ID:", worker$id, "- ", e$message, "\n"))
  })
}

