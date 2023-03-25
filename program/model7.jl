using Plots
using DifferentialEquations

N = 1234
n₀ = 7

function ode_fn₁(du, u, p, t)
  du[1] = (0.618 + 0.000013*u[1])*(N - u[1])
end
function ode_fn₂(du, u, p, t)
  du[1] = (0.0000117 + 0.25*u[1])*(N - u[1])
end
function ode_fn₃(du, u, p, t)
  du[1] = (0.5*sin(10t) + 0.4*cos(2t)*u[1])*(N - u[1])
end

tspan₁ = (0.0, 30.0)
tspan₂₃ = (0.0, 0.1)

prob₁ = ODEProblem(ode_fn₁, [n₀], tspan₁)
sol₁ = solve(prob₁, dtmax = 0.05)
prob₂ = ODEProblem(ode_fn₂, [n₀], tspan₂₃)
sol₂ = solve(prob₂)
prob₃ = ODEProblem(ode_fn₃, [n₀], tspan₂₃)
sol₃ = solve(prob₃, dtmax = 0.05)

n₁ = [u[1] for u in sol₁.u]
T₁ = [t for t in sol₁.t]
n₂ = [u[1] for u in sol₂.u]
T₂ = [t for t in sol₂.t]
n₃ = [u[1] for u in sol₃.u]
T₃ = [t for t in sol₃.t]

plt = plot( dpi = 300, title = "Эффективность рекламы(1 случай)", legend = false)
plot!(plt, T₁, n₁, color = :red)
savefig(plt, "model1.png")
plt2 = plot( dpi = 300, title = "Эффективность рекламы(2 случай)", legend = false)
plot!(plt2, T₂, n₂, color = :red)
savefig(plt2, "model2.png")
plt3 = plot( dpi = 300, title = "Эффективность рекламы(3 случай)", legend = false)
plot!(plt3, T₃, n₃, color = :red)
savefig(plt3, "model3.png")


