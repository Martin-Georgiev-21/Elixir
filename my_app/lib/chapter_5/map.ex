defmodule MyApp.Chapter_5.Map do

  def quanterall() do
    [
      %{
        firstName: Martin,
        lastName: Georgiev,
        age: 18,
        department: "IT",
        yearsOfExperience: 0,
        salary: 0
        },
      %{
        firstName: Mariq,
        lastName: Magdalena ,
        age: 23,
        department: "marketing",
        yearsOfExperience: 5,
        salary: 2_000
        },
      %{
        firstName: Nikola,
        lastName: Kostadinov,
        age: 19, department: "IT",
        yearsOfExperience: 0,
        salary: 0
        },
      %{
        firstName: Jora,
        lastName: Neznamfamiliq,
        age: 20,
        department: "IT",
        yearsOfExperience: 1,
        salary: 700
        },
      %{
        firstName: Martin,
        lastName: Georgiev,
        age: 19,
        department: "IT",
        yearsOfExperience: 0,
        salary: 0
        },
      %{
        firstName: Diana,
        lastName: Todorova,
        age: 47,
        department: "operations",
        yearsOfExperience: 10,
        salary: 3_000
        },
      %{
        firstName: Anton,
        lastName: Andonov,
        age: 45,
        department: "IT",
        yearsOfExperience: 19,
        salary: 3_000_000
      }
    ]
  end


  def promote(company, salary_to_increase, increased_value) do

     Enum.map(company, fn
      %{salary: salary} = employee when salary <= salary_to_increase ->
        %{  employee | salary: increased_value}
        employee ->
          employee
        end)
  end

end
