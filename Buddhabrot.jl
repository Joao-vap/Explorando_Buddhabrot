using Distributions
using DelimitedFiles
using ProgressBars

function add_escapes(all_escapes, resolution, Δx, xLim, yLim)

    M = zeros(Int16,resolution, resolution)
    Inteiro = (dec) -> Int(round(dec)) ## Equivalent to int in python

    for z in all_escapes

        ## Here we'll be finding the index related to z
        posₓ = Inteiro((real(z) - xLim[1])/Δx)
        posᵧ = Inteiro((imag(z)+yLim[2])/Δx)

        ## I'll be taking the reflex too cuz my PC is shitty
        reflexPosᵧ = resolution - posᵧ + 1
        if  (resolution+1 > posᵧ > 0) & (resolution+1 > posₓ > 0)
            M[posₓ,posᵧ] = M[posₓ,posᵧ] + 1
            M[posₓ,reflexPosᵧ] = M[posₓ,reflexPosᵧ] +1
        end
    end
    return M
end


function file_maker(M, saida="saida-ntst-ctst.txt") #Just a boring name, call
    # it whatever you want to
    open(saida, "w") do f
        writedlm(f, M) ## Just write our matrix
    end
end

function iteracoes(c,cicles)

    z = 0+0im
    ## An auxiliar list which gets the points that
    ## are escaping
    escapes = []
    for i in 1:cicles
        ## Maldenbrot per se comes here
        z = z^2 + c
        # We must see wether or not our position is in M
        append!(escapes, z)
        ## I dont' think that these points will be falling
        ## at an interesting position ever again
        if abs(z) > 2
            ## This one helps making a much cleaner image
            ## it also makes the code go a lot faster
            if i < cicles÷5
                return []
            else
                return escapes
            end
        end
    end # annndddddd our loop is finally over
    if abs(z) <= 2 ## Those are probably inside Maldenbrot's set
        return []
    else
        return escapes
end
end


function main(ciclos=1000, npontos=10^6,resolution=1024)

    @time begin # I like having a counter

    ## Establishing the limits of the graph
    xLimits = (-1.5,1.5)
    yLimits = (-1.5,1.5)

    ## Determining the variation in the axes
    Δx = (xLimits[2] - xLimits[1])/resolution

    all_escapes = Array{Complex,1}()
    iter = ProgressBar(1:npontos) # I'm too ansious to not havin gone

    for i in iter
        ## Makes the complex number
        c = complex(rand(Uniform(xLimits[1],xLimits[2])),
        rand(Uniform(0 , yLimits[2])))

        ## Taking a bit of Maldenbrot
        if (real(c) + 0.2)^2 + imag(c)^2 <= 0.16
            continue
        end
        append!(all_escapes, iteracoes(c, ciclos))
    end

    ## Making ou matrix and printing it in the  file
    M = add_escapes(all_escapes,resolution, Δx,
        xLimits,yLimits)
    file_maker(M)
    end
end
