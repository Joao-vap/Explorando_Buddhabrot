using Distributions
using DelimitedFiles

function file_maker(M, saida="saida.txt")
    open(saida, "w") do f
        writedlm(f, M)
    end
    println("Done!")
end

function iteracoes(c,ciclos, resolution,xLimits, yLimits,M)

    z = 0+0im
    ## Determining the variation in the x axis and the y axys
    Δx = (xLimits[2] - xLimits[1])/resolution
    Δy = (yLimits[2] - yLimits[1])/resolution
    # An auxiliar matrix which i'll add to our main Matrix
    Aux_M = zeros(Int16,resolution, resolution)

    for i in 1:ciclos
        ## Maldenbrot per se comes here
        z = z^2 + c

        Inteiro = (dec) -> Int(round(dec)) # just a function

        ## Here we'll be finding the index related to z
        posₓ = Inteiro((real(z) - xLimits[1])/Δx)
        posᵧ = Inteiro((imag(yLimits[2]) - imag(z))/imag(Δy))
        ## I'll be taking the reflex too cuz my PC is shitty
        reflexPosᵧ = resolution - posᵧ + 1

        # We must see wether or not our position is in M
        if  (resolution+1 > posᵧ > 0) & (resolution+1 > posₓ > 0)
            ## Okay, the point felt there, now we need to
            ## update our matrix
            try
                Aux_M[posᵧ,posₓ] = Aux_M[posᵧ,posₓ] + 1
                Aux_M[reflexPosᵧ,posₓ] = Aux_M[reflexPosᵧ,posₓ] +1
            catch BoundsError
                @warn string(z)
            end

        ## I dont' think that these points will be falling
        ## at an interesting position ever again
        elseif abs(z) > 7
            break
        end
    end # annndddddd our loop is finally over
    if abs(z) <= 2 # Else z is probably in Maldenbrot
        return M
    else
        return M + Aux_M
end
end


function main(ciclos=1000, npontos=10^6,resolution=1024)
    @time begin
    ## Establishing the limits of the graph
    xLimits = (-1.5,1.5)
    yLimits = (-1.5im,1.5im)

    #This one is the main matrix, which we'll end up plotting
    M = zeros(Int16,resolution, resolution)

    for i in 1:npontos
        c = complex(rand(Uniform(-1.5,1.5)),
        rand(Uniform(0,1.5)))
        M = iteracoes(c, ciclos, resolution, xLimits, yLimits,M)
    end
    file_maker(M)
    end
end

main()
